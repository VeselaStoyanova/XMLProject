<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        Каталог с екскурзии
        <xsl:for-each select="/excursions_catalog/excursions/excursion">
            Код на екскурзията: <xsl:value-of select="basic_info/code/@code"/>
            Категория: <xsl:value-of select="basic_info/category/@category"/>
            Име: <xsl:value-of select="basic_info/name/."/>
            Цена: <xsl:value-of select="basic_info/price"/>
            <xsl:value-of select="basic_info/price/@priceCurrency"/>
            Маршрут: <xsl:value-of select="secondary_info/about_excursion/route/."/>
            Дати: <xsl:value-of select="secondary_info/about_excursion/dates/."/>
            Брой нощувки: <xsl:value-of select="secondary_info/about_excursion/nights_number/@numberOfNights"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
    </xsl:template>
    <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
</xsl:stylesheet>