import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.dom.DOMSource;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.transform.stream.StreamSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.Transformer;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.File;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 *
 */
@WebServlet(name="ProductServlet", urlPatterns={"/ProductServlet"})
public class ProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String path = getServletContext().getRealPath("/WEB-INF/");
        String XMLFileName = path + "/shop.xml";
        String XSLFileName = path + "/product.xsl";

        String product_id = request.getParameter("product_id");
        File docFile = new File(XMLFileName);

        Document doc = null;
        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            doc = db.parse(docFile);
        }catch (Exception e) {
            System.err.println("Error Document: "+e.getMessage());
        }
        DOMSource origDocSource = new DOMSource(doc);


        try {
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            StreamSource stylesheet = new StreamSource(XSLFileName);

            Transformer transformer = transformerFactory.newTransformer(stylesheet);

            NodeList productIDNodeList = doc.getElementsByTagName("product_id");
            int num_products = productIDNodeList.getLength();
            String prev_id;
            String next_id;

            for (int i=0;i<num_products; i++){

                Node productIDNode = productIDNodeList.item(i);

                NodeList productNodeListChildren = productIDNode.getChildNodes();
                Node productTextNode = productNodeListChildren.item(0);
                String productIDValue = productTextNode.getNodeValue();
                 if (product_id.equals(productIDValue)) {

                    if (i!=0) {
                        prev_id=productIDNodeList.item(i-1).getChildNodes().item(0).getNodeValue();
                    } else {
                        prev_id=productIDNodeList.item(num_products-1).getChildNodes().item(0).getNodeValue();
                    }

                    if (i!=(num_products-1)) {
                        next_id=productIDNodeList.item(i+1).getChildNodes().item(0).getNodeValue();
                    } else {
                        next_id=productIDNodeList.item(0).getChildNodes().item(0).getNodeValue();
                    }

                    transformer.setParameter("vProduct_id", productIDValue);
                    transformer.setParameter("vPrev_id", prev_id);
                    transformer.setParameter("vNext_id", next_id);

                    transformer.transform(origDocSource,new StreamResult(out));
                }
            }
        } catch (Exception e) {
            out.println("Exception transformation :"+e.getMessage());
            e.printStackTrace(out);
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

public class AddToOrder extends HttpServlet {

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws IOException, ServletException
  {

	  String thisProduct_id = request.getParameter("addProduct_id");

     response.setContentType("text/html");
     PrintWriter out = response.getWriter();
	 out.println("<html><body>");
     out.println("Adding item "+ thisProduct_id);
     out.println("</body></html>");

  }
  //*******END doGet() *********

}
}