<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <excursions_catalog>
            <excursions>
                    <excursion>
                        <basic_info>
                            <name><xsl:value-of select="excursions_catalog/excursions/excursion/basic_info/name"/></name>
                        </basic_info>
                        <secondary_info>
                            <route><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_excursion/route"/></route>
                            <dates><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_excursion/dates"/></dates>
                            <nights_number><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_excursion/nights_number/@numberOfNights"/></nights_number>
                        </secondary_info>
                        <rules>
                            <price_include><xsl:value-of select="excursions_catalog/excursions/excursion/rules/price_include"/></price_include>
                            <price_not_include><xsl:value-of select="excursions_catalog/excursions/excursion/rules/price_not_include"/></price_not_include>
                        </rules>
                            <excursion_more_info>
                            <more_excursions><xsl:value-of select="excursions_catalog/excursions/excursion/excursion_more_info/more_excursions"/></more_excursions>
                        </excursion_more_info>
                    </excursion>
            </excursions>

        </excursions_catalog>
    </xsl:template>
</xsl:stylesheet>