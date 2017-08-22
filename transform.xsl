<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="root">
        <html>
            <xsl:apply-templates/>
        </html>
    </xsl:template>
    
    <xsl:template match="title">
        <head>
            <title><xsl:apply-templates/></title>
        </head>
    </xsl:template>
    
    <xsl:template match="body">
        <body>
            <p><xsl:apply-templates/></p>
        </body>
    </xsl:template>
    
</xsl:stylesheet>
