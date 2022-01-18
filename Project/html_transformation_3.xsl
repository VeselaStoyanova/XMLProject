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
                        <th>Име</th>
                        <th>Държава</th>
                        <th>Забележителности</th>
                        <th>История</th>
                        <th>Климат</th>
                        <th>Часово време</th>
                        <th>Парична единица</th>
                    </tr>
                    <xsl:for-each select="excursions_catalog/excursions/excursion">
                        <tr>
                            <td>
                                <xsl:value-of select="basic_info/name"/>
                            </td>
                            <td>
                                <xsl:value-of select="basic_info/country"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_town/landmarks"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_town/history"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_town/climate"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_town/time_zone"/>
                            </td>
                            <td>
                                <xsl:value-of select="secondary_info/about_town/currency/@countryCurrency"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>