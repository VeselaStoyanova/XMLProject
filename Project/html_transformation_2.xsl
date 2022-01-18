<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>XML Каталог за екскурзии</title>
            </head>
            <body>
                <table border="1">
                    <tr background-color = "#9acd32">
                        <th>Име на екскурзията</th>
                        <th>Маршрут</th>
                        <th>Дати</th>
                        <th>Брой нощувки</th>
                        <th>Цената включва</th>
                        <th>Цената не включва</th>
                        <th>Допълнителни екскурзии</th>
                    </tr>
                    <xsl:for-each select="excursions_catalog/excursions/excursion">
                        <tr>
                            <td>
                                <xsl:value-of select="basic_info/name"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_excursion/route"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_excursion/dates"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_excursion/nights_number/@numberOfNights"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/price_include"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/price_not_include"/>
                            </td>
                            <td>
                                <xsl:value-of select="excursion_more_info/more_excursions"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>