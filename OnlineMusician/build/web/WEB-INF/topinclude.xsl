<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<link rel="stylesheet" type="text/css" href="Shopcss.css" />
    <xsl:template match="/" priority="10">
    <html>
    <head><title>ChaseWeb Furniture</title></head>

    <body background-color="#FFFFF0">
   
    	<center>
   <img width="500" height="100" src="topinclude.gif" class="topinclude"/>
        </center>
    	<p align="center">
    	<xsl:element name="a">
	    <xsl:attribute name="href">IndexServlet</xsl:attribute>About Online Musician
    	</xsl:element> |

	<xsl:element name="a">
	    <xsl:attribute name="href">ProductsServlet</xsl:attribute>Products/Shopping
    	</xsl:element> |
      	</p>
	
	<xsl:apply-templates/>

</body>
</html>
</xsl:template>

<xsl:template match="special">
</xsl:template>


</xsl:transform>

