<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/HN-stationary">

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
   
</head>
<body>
    <div class="container">
    <h1>HN STATIONARY</h1>
    <table border="1">
        <tr bgcolor="pink">
            <th>id</th>
            <th>product-name</th>
             <th>quantity</th>
            <th>price per unit</th>
            <th>price per dozen</th>
           <th>stock</th>
        </tr>
        <xsl:for-each select="Products">
            <xsl:if test="stock='Yes'">
            <tr bgcolor="skyblue">
                <td><xsl:value-of select="Product-id"></xsl:value-of></td>
                <td><xsl:value-of select="Product-name"></xsl:value-of></td>
                <td><xsl:value-of select="Quantity"></xsl:value-of></td>
                <td><xsl:value-of select="Price-per-unit"></xsl:value-of></td>
                <td><xsl:value-of select="Price-per-dozen"></xsl:value-of></td>
                <td><xsl:value-of select="stock"></xsl:value-of></td>
            </tr>
        </xsl:if>
        </xsl:for-each>
    </table>
</div>
</body>
</html>


</xsl:template>
</xsl:stylesheet>
