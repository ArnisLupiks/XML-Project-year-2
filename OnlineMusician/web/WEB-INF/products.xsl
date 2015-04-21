<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<link rel="stylesheet" type="text/css" href="Shopcss.css" />
        <xsl:include href="topinclude.xsl"/>
    
       <xsl:template match="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"> 
       <center>
        Product Id:
        <xsl:element name="a">
            <xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="product_id"/></xsl:attribute>
            <xsl:value-of select="product_id"/>
       </xsl:element><br />   </center>
    <table cellspacing="5" cellpadding="5" align="center" >
                <td>
                  <xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                       </xsl:element>
                     </td>
                </table>
	
	</xsl:template>
       
	<xsl:template match="products"> <center>
            <h2><u><xsl:value-of select="product_name"/></u></h2>
	    <xsl:apply-templates select="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"/>
	</center></xsl:template>
        
    	
</xsl:stylesheet>
