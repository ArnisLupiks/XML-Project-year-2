<?xml version="1.0" encoding="ISO-8859-1"?>
                    
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="topinclude.xsl"/>
<xsl:param name="vProduct_id"></xsl:param>
<xsl:param name="vPrev_id"></xsl:param>
<xsl:param name="vNext_id"></xsl:param>
 
<!-- **********************  guitar table ************************************   -->

     <xsl:template match="guitar">
    <xsl:if test="product_id=$vProduct_id">
        
 <!-- *********************  flipping pages *********************************   -->

        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
</p>
 <hr />
 <!-- *********************      table     *********************************   -->
               <table align = "center">
               <tr>
                    <td><table cellspacing="1" cellpadding="2" border = "1">
			<tr bgcolor="yellow">
				<th align="left">Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th align="left">Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th align="left">Model Name:</th>
                                <th><xsl:value-of select="model_name"/></th></tr>
                        <tr>	<th align="left">Price:</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th align="left">Sales Price:</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th align="left">Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                        <tr>	<th align="left">Give away item:</th>
                                <th><xsl:value-of select="giveaway_item"/></th></tr>
                        <tr>	<th align="left">Warranty:</th>
                                <th><xsl:value-of select="warranty"/></th></tr>
                    </table></td>
<!-- ******************************* Displays picture ************************************* -->
               <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                    </xsl:element></td>
                </table></td>
                </tr></table>
<!-- **************************** add to order table ********************************** -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>
  		</form><hr />
 <!-- ****************************  flipping pages ***********************************   -->
    <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
    </p>
</xsl:if>
</xsl:template>
<!-- **************************** end of guitar table  ******************************** -->
<!-- ********************************************************************************** -->
<!-- ***************************   basse guitar table  ******************************** -->
<hr />
  <xsl:template match="basses">
    <xsl:if test="product_id=$vProduct_id">
 <!-- *********************   flipping pages    *********************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
<!-- ********************************     table     ****************************************   -->
               <table align = "center">
               <tr><td>
                    <table cellspacing="1" cellpadding="5" border = "1">
			<tr bgcolor="yellow">
				<th>Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th>Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th>Model Name</th>
                                <th><xsl:value-of select="model_name"/></th></tr>
                        <tr>	<th>Price</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th>Sales Price</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th>Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                        <tr>	<th>Give away item:</th>
                                <th><xsl:value-of select="giveaway_item"/></th></tr>
                        <tr>	<th>Warranty:</th>
                                <th><xsl:value-of select="warranty"/></th></tr>
                    </table>
                    </td>
<!-- ******************************* Displays picture ************************************* -->
               <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                       </xsl:element></td>
                </table></td>
                </tr></table>
<!-- ******************************** order table *********************************** -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
     		Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>  		
                     </form><hr />
<!-- ****************************   flipping pages    **************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
</xsl:if>
</xsl:template>
<!-- ***************************  end of basse guitar table  *******************************  -->
<!-- **************************************************************************************** -->
<!-- *****************************  synthesizer table  ************************************  -->
<xsl:template match="synthesizer">
    <xsl:if test="product_id=$vProduct_id">
 <!-- ****************************   flipping pages    **************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
<!-- ***************************          table        ******************************************   -->
               <table width ="400" align = "center" borger ="1">
               <tr>
                    <td><table cellspacing="1" cellpadding="5" border = "1">
			<tr bgcolor="yellow">
				<th>Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th>Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th>Model Name</th>
                                <th><xsl:value-of select="model_name"/></th></tr>
                        <tr>	<th>Type</th>
                                <th><xsl:value-of select="type"/></th></tr>
                        <tr>	<th>Price</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th>Sales Price</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th>Keys: </th>
                                <th><xsl:value-of select="set_discr"/></th></tr>
                        <tr>	<th>Voices: </th>
                                <th><xsl:value-of select="voices"/></th></tr>
                        <tr>	<th>Instruments onboard: </th>
                                <th><xsl:value-of select="instruments_onboard"/></th></tr>
                        <tr>	<th>Weight: </th>
                                <th><xsl:value-of select="weight"/></th></tr>          
                        <tr>	<th>Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                        <tr>	<th>Give away item:</th>
                                <th><xsl:value-of select="giveaway_item"/></th></tr>
                        <tr>	<th>Warranty:</th>
                                <th><xsl:value-of select="warranty"/></th></tr>
                    </table></td>
<!-- ******************************* displays pictures ************************************ -->
              <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                       </xsl:element>
                     </td>
                </table></td>
                </tr></table>
<!-- ************************************ order table ************************************* -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                       <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>    		</form><hr />
<!-- *******************************  ordertable end *************************************   -->
     <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
    </p>
</xsl:if>
</xsl:template>
<!-- ***************************** end of synthesizer table  ************************************  -->
<!-- ******************************************************************************************** -->
<!-- ********************************* drum table  **********************************************  -->
  <xsl:template match="drum">
    <xsl:if test="product_id=$vProduct_id">
 <!-- *****************************  flipping pages *********************************   -->
        <p align="center">
            <xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
         |
            <xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
 <!-- ********************************* table ************************************** -->
               <table align = "center">
               <tr><td>
                    <table cellspacing="1" cellpadding="5" border = "1">
			<tr bgcolor="yellow">
				<th>Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th>Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th>Model Name</th>
                                <th><xsl:value-of select="model_name"/></th></tr>
                        <tr>	<th>Set :</th>
                                <th><xsl:value-of select="set_discr"/></th></tr>
                        <tr>	<th>Type :</th>
                                <th><xsl:value-of select="type"/></th></tr>
                        <tr>	<th>Price :</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th>Sales Price :</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th>Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                        <tr>	<th>Give away item:</th>
                                <th><xsl:value-of select="giveaway_item"/></th></tr>
                        <tr>	<th>Warranty:</th>
                                <th><xsl:value-of select="warranty"/></th></tr>
                    </table></td>
<!-- ******************************* Displays picture ************************************* -->
               <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                       </xsl:element></td>
                </table></td>
                </tr></table>
<!-- ****************************** order table ******************************** -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                     <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>   		</form><hr />
<!-- *************************  ordertable end *********************************   -->
    <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
    </p>
</xsl:if>
</xsl:template>
<!-- ********************************* end of drum table  **********************************************  -->
<!-- ************************************************************************************************* -->
<!-- ********************************* songbook table  **********************************************  -->
<xsl:template match="songbook">
 <xsl:if test="product_id=$vProduct_id">
 <!-- *******************************  flipping pages *********************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
<!-- *********************************** table ************************************************ -->
               <table align = "center">
               <tr><th>
                    <table cellspacing="5" cellpadding="5" border = "1">
			<tr bgcolor="yellow">
				<th>Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th>Artist:</th>
                                <th><xsl:value-of select="artist"/></th></tr>
                        <tr>	<th>Album</th>
                                <th><xsl:value-of select="album"/></th></tr>
                        <tr>	<th>Genre</th>
                                <th><xsl:value-of select="genre"/></th></tr>
                        <tr>	<th>Instrument</th>
                                <th><xsl:value-of select="instrument"/></th></tr>
                        <tr>	<th>Author</th>
                                <th><xsl:value-of select="author"/></th></tr>
                        <tr>	<th>Price</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th>Sale Price</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th>Skill Level:</th>
                                <th><xsl:value-of select="skill_level"/></th></tr>
                         <tr>	<th>Year:</th>
                                <th><xsl:value-of select="year"/></th></tr>			
                </table></th>
<!-- ********************************* displays pictures ********************************* -->
                <th><table cellspacing="5" cellpadding="5" align="right" >
                    <td><xsl:element name="img">
                             <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                        </xsl:element></td>
                    </table></th>
                </tr></table>
<!-- ********************************** order table ************************************ -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>   		</form><hr />
<!-- ***************************    flipping pages     ***************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p>
</xsl:if>
</xsl:template>
<!-- ********************************* end of songbook table  **********************************************  -->
<!-- ************************************************************************************************ -->
<!-- ********************************* cd's table  **********************************************  -->
<xsl:template match="cds">
    <xsl:if test="product_id=$vProduct_id">
<!-- *****************************  flipping pages ******************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
<!-- *********************************** table ************************************************ -->
               <table align = "center">
               <tr><td>
                    <table cellspacing="5" cellpadding="5" border = "1">
			<tr bgcolor="yellow">
				<th>Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th>Artist:</th>
                                <th><xsl:value-of select="artist"/></th></tr>
                        <tr>	<th>Album</th>
                                <th><xsl:value-of select="album"/></th></tr>
                        <tr>	<th>Genre</th>
                                <th><xsl:value-of select="genre"/></th></tr>
                        <tr>	<th>Company</th>
                                <th><xsl:value-of select="company"/></th></tr>
                        <tr>	<th>Price</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th>Sale Price</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th>Give away item:</th>
                                <th><xsl:value-of select="giveaway_item"/></th></tr>
                         <tr>	<th>Year:</th>
                                <th><xsl:value-of select="year"/></th></tr>
                    </table>
                    <table width ="450">
                        <th>Descrition: </th>
                        <td><xsl:value-of select="descr"/></td>
                    </table></td>
<!-- ****************************** displays pictures ************************************ -->
                    <td><table cellspacing="5" cellpadding="5" align="right" >
                    <td><xsl:element name="img">
                        <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                        </xsl:element></td>
                    </table></td>
                </tr></table>
<!-- ********************************** order table ************************************ -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>   		</form><hr />
<!-- **********************************  ordertable end *******************************************   -->
    <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
    </p>
</xsl:if>
</xsl:template>
<!-- ********************************* end of cd's table  **********************************************  -->
<!-- *************************************************************************************************** -->
<!-- ********************************* headphones table  **********************************************  -->
<xsl:template match="headphones">
    <xsl:if test="product_id=$vProduct_id">
<!-- *****************************  flipping pages *********************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p><hr />
<!-- ********************************** table *************************************************** -->
 <table align = "center">
               <tr>
                    <td><table cellspacing="1" cellpadding="2" border = "1">
			<tr bgcolor="yellow">
				<th align="left">Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th align="left">Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th align="left">Model Name:</th>
                                <th><xsl:value-of select="model_name"/></th></tr>
                        <tr>	<th align="left">Type:</th>
                                <th><xsl:value-of select="type"/></th></tr>
                        <tr>	<th align="left">Price:</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th align="left">Sales Price:</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th align="left">Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                        <tr>	<th align="left">Cable length:</th>
                                <th><xsl:value-of select="cable_length"/></th></tr>
                    </table></td>
<!-- ***************************** displays pictures ********************************************* -->
               <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                    </xsl:element></td>
                </table></td>
                </tr></table>
<!-- ********************************* order table ************************************************** -->
        <hr />Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
                    <xsl:element name="input">
                    <xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
                    <xsl:attribute name="type">hidden</xsl:attribute>
                    <xsl:attribute name="name">addProduct_id</xsl:attribute>
                    </xsl:element>
                    Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                    <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>   		</form><hr />
<!-- *********************************  ordertable end ********************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p>
</xsl:if>
</xsl:template>

<!-- ********************************* end of headphones table  **********************************************  -->
<!-- ************************************************************************************************* -->
<!-- *********************************** cable table  **********************************************  -->

<xsl:template match="cable">
    <xsl:if test="product_id=$vProduct_id">	
<!-- **********************************  flipping pages ****************************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
     </p>
<!-- ************************************ table ************************************************** -->
        <table align = "center">
               <tr>
                    <td><table cellspacing="1" cellpadding="2" border = "1">
			<tr bgcolor="yellow">
				<th align="left">Product Number:</th>
                                <th><xsl:value-of select="product_id"/></th></tr>
                        <tr>    <th align="left">Name:</th>
                                <th><xsl:value-of select="name"/></th></tr>
                        <tr>	<th align="left">Length:</th>
                                <th><xsl:value-of select="length"/></th></tr>
                        <tr>	<th align="left">Connecions:</th>
                                <th><xsl:value-of select="connections"/></th></tr>
                        <tr>	<th align="left">Price:</th>
                                <th><xsl:value-of select="price[@pricetype='retail']"/></th></tr>
                        <tr>	<th align="left">Sales Price:</th>
                                <th><xsl:value-of select="price[@pricetype='sale']"/></th></tr>
                        <tr>	<th align="left">Color:</th>
                                <th><xsl:value-of select="color"/><br/></th></tr>
                       </table></td>
<!-- *************************** displays pictures ******************************** -->
                <td><table cellspacing="5" cellpadding="5" align="right" >
                <td><xsl:element name="img">
                       <xsl:attribute name="src"><xsl:value-of select="./image"/></xsl:attribute>
                    </xsl:element></td>
                     </table></td>
                </tr></table>
<!-- ********************************* order table ******************************** -->
        <hr />        
		 Add this to my order!<br />
	  	<form method="post" action="AddToOrder">
        	  <xsl:element name="input">
          	<xsl:attribute name="value"><xsl:value-of select="product_id"/></xsl:attribute>
           	<xsl:attribute name="type">hidden</xsl:attribute>
           	<xsl:attribute name="name">addProduct_id</xsl:attribute>
        	  </xsl:element>
     		Quantity:  <input type="text" name="addQuantity" value="1" size="3" />
                <input type="buton" value="Add to Order" onclick="myFunction()" />
                     <script>
                        function myFunction()
                        {alert("Your order has been placed!");}
                     </script>         
                </form>
                <hr />
<!-- ************************  ordertable end *********************************   -->
        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vPrev_id"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductServlet?product_id=<xsl:value-of select="$vNext_id"/></xsl:attribute>Next Product</xsl:element>
        </p>
</xsl:if>
</xsl:template>
<!-- ********************************* end of cable table  **********************************************  -->
<!-- *************************************************************************************************** -->	
	<xsl:template match="products[guitar/product_id=$vProduct_id]
                            |products[basses/product_id=$vProduct_id]
                            |products[synthesizer/product_id=$vProduct_id]
                            |products[drum/product_id=$vProduct_id]
                            |products[songbook/product_id=$vProduct_id]
                            |products[cds/product_id=$vProduct_id]
                            |products[headphones/product_id=$vProduct_id]
                            |products[cable/product_id=$vProduct_id]">
            <h1 align="center">
	        <xsl:value-of select="product_name"/>
	    </h1>
            <p align="center">
	    <xsl:value-of select="advertisement"/>
            </p>
            <hr />
	    <xsl:apply-templates select="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"/>
	</xsl:template>

	<xsl:template match="products">
	    <xsl:apply-templates select="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"/>
	</xsl:template>

</xsl:stylesheet>



