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
                        <th>Условия за записване</th>
                        <th>Условия за плащане</th>
                        <th>Неустойки</th>
                        <th>Необходими документи</th>
                    </tr>
                    <xsl:for-each select="excursions_catalog/excursions/excursion">
                        <tr>
                            <td>
                                <xsl:value-of select="basic_info/name"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/more_info/enrollment_conditions"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/more_info/payment_terms"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/more_info/penalties"/>
                            </td>
                            <td>
                                <xsl:value-of select="rules/necessary_documents"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>