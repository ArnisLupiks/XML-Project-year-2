<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    version="1.0">

<xsl:include href="topinclude.xsl"/>


<xsl:template  match="shop">

<link rel="stylesheet" type="text/css" href="Shopcss.css" />    
 <p align='center'>
At "Online Musican" we stock a wide range of quality Instruments, Books, Cd's etc, "from a Styli to a Piano" for every musicians needs,
from the beginner student to teacher to the professional.
 </p>

<p align='center'>
We believe in music education and the importance of lessons to help overcome the frustration of "practice makes perfect"
to get the most enjoyment from your instrument, after all MUSIC is an international language.</p>
<p align='center'>
As an independant family run business we would wholeheartedly and sincerely like to thank all who have supported
us in the past and become part of our extended family.</p>
<p align='center'>
It is thanks to people such as yourselves that we are doing what we love,
each and every day and it is a continued honour and pleasure to serve you to the best of our ability.
</p>
<p align='center'>
    
At "Online Musican" we believe in great quality,excellent value and first class service.
</p><br />
<p align='center'>
Happy Shopping.
</p>
<p align='center'>
The "Online Musican" team

    </p><br />
<p align='center'>
   Check in our shop thouse products:
</p>
      <xsl:apply-templates />

    </xsl:template>

    <xsl:template match="products">

        <b>   <center>
             <xsl:element name="a">
            <xsl:attribute name="href">ProductNameServlet?product_name=<xsl:value-of select="product_name"/></xsl:attribute>
            <xsl:value-of select="product_name"/>
        </xsl:element><br />
         
               </center>
        </b>
      

    </xsl:template>

    <xsl:template match="special">

    </xsl:template>

</xsl:stylesheet>


