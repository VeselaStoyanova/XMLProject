<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог с екскурзии
        <xsl:for-each select="/excursions_catalog/excursions/excursion">
            Име: <xsl:value-of select="basic_info/name"/>
            Цена: <xsl:value-of select="basic_info/price"/>
            <xsl:value-of select="basic_info/price/@priceCurrency"/>
            Програма: <xsl:value-of select="excursion_more_info/program"/>
            Цената включва: <xsl:value-of select="rules/price_include"/>
            Цената не включва: <xsl:value-of select="rules/price_not_include"/>
            Условия:  <xsl:call-template name="conditions"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="conditions">
        За записване: <xsl:value-of select="rules/more_info/enrollment_conditions"/>
        За плащане: <xsl:value-of select="rules/more_info/payment_terms"/>
        Неустойки: <xsl:value-of select="rules/more_info/penalties"/>
    </xsl:template>    
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
</xsl:stylesheet>