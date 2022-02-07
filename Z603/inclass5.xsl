<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:output indent="yes"/>
    
    <xsl:variable name="apostrophe">'</xsl:variable>
    
    <!-- Matches data set's root element, turn into an HTML page that lists all cats. -->
    <xsl:template match="cat-data">
        <html>
            <head>
                <title>Neko Cats Remix</title>
                <link href="https://nhomenda.github.io/css/main.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <h1>Neko Cats Remix</h1>
                <ul>
                    <xsl:apply-templates select="cat-record">
                    <xsl:sort select="name" order="ascending"/>
                </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>
    
    <!-- Creates individual list items for each cat_record with links to their pages; Invokes result-document to create individual pages. -->
    <xsl:template match="cat-record">
        <li>
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="concat('cats/', name, '.html')"/>
                </xsl:attribute>
                <xsl:value-of select="name"/>
            </xsl:element>
        </li>
        <xsl:result-document href="{concat('cats/', name, '.html')}">
            <html>
                <head>
                    <title><xsl:value-of select="concat(name, $apostrophe, 's Page')"/></title>
                    <link href="https://nhomenda.github.io/css/main.css" rel="stylesheet" type="text/css"/>
                </head>
                <body>
                    <!-- <xsl:apply templates select="xpath1"/> -->
                    <!-- <xsl:apply templates select="xpath2"/> -->
                    <!-- <xsl:apply templates select="xpath3"/> -->
                    <a href="../neko_html.html">Back to list</a>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- add templates that you referenced in the previous template here -->
    

</xsl:stylesheet>