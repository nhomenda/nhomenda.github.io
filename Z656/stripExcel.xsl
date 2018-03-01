<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns="urn:schemas-microsoft-com:office:spreadsheet"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:o="urn:schemas-microsoft-com:office:office"
    xmlns:x="urn:schemas-microsoft-com:office:excel"
    xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
    xmlns:html="http://www.w3.org/TR/REC-html40"
    xmlns:x2="http://schemas.microsoft.com/office/excel/2003/xml"
    xpath-default-namespace="urn:schemas-microsoft-com:office:spreadsheet"
    exclude-result-prefixes="#default xsi o x ss html">
    <xsl:output method="xml" encoding="utf-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="@* | node()">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template> 
    
    <xsl:template match="*">
        <xsl:element name="{local-name()}" namespace=''>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="Workbook|Worksheet|Data">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="DocumentProperties|OfficeDocumentSettings" xpath-default-namespace="urn:schemas-microsoft-com:office:office"/>
    <xsl:template match="ExcelWorkbook|WorksheetOptions" xpath-default-namespace="urn:schemas-microsoft-com:office:excel"/>
    <xsl:template match="Styles|Column|Names|NamedCell"/>
    <xsl:template match="x2:MapInfo|x2:Binding" xpath-default-namespace="http://schemas.microsoft.com/office/excel/2003/xml"/>
    <xsl:template match="@ss:*|@x:*"/>
    <xsl:template match="processing-instruction()[starts-with(name(), 'mso-')]"/>
    
</xsl:stylesheet>