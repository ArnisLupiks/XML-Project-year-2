<?xml version="1.0" encoding="ISO-8859-1"?>
                    
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="topinclude.xsl"/>
<xsl:param name="vProduct_name"></xsl:param>
<xsl:param name="vPrev_name"></xsl:param>
<xsl:param name="vNext_name"></xsl:param>
 
<!-- **********************  guitar table ************************************   -->

     <xsl:template match="guitar">
    <xsl:if test="product_name=$vProduct_name">
        
 <!-- *********************  flipping pages *********************************   -->

        <p align="center">
	<xsl:element name="a"><xsl:attribute name="href">ProductNameServlet?product_name=<xsl:value-of select="$vPrev_name"/></xsl:attribute>Previous Product</xsl:element>
        |
	<xsl:element name="a"><xsl:attribute name="href">ProductNameServlet?product_name=<xsl:value-of select="$vNext_name"/></xsl:attribute>Next Product</xsl:element>
</p>
 <hr />
 <!-- *********************      table     *********************************   -->
              
<!-- ********************************* end of cable table  **********************************************  -->
<!-- *************************************************************************************************** -->	
	<xsl:template match="products[guitar/product_name=$vProduct_name]
                            |products[basses/product_name=$vProduct_name]
                            ">
      
	    <xsl:apply-templates select="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"/>
	</xsl:template>

	<xsl:template match="products">
	    <xsl:apply-templates select="guitar|basses|synthesizer|drum|songbook|cds|headphones|cable"/>
	</xsl:template>

</xsl:stylesheet>

