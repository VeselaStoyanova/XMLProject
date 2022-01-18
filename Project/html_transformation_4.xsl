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
                        <th>Програма</th>
                        <th>Снимки</th>
                    </tr>
                    <xsl:for-each select="excursions_catalog/excursions/excursion">
                        <tr>
                            <td>
                                <xsl:value-of select="basic_info/name"/>
                            </td>
                            <td>
                                <xsl:value-of select="excursion_more_info/program"/>
                            </td>
                            <td>
                                <xsl:value-of select="excursion_more_info/images"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>