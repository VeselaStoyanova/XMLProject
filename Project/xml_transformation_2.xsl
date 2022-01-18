<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <excursions_catalog>
            <excursions>
                    <excursion>
                        <basic_info>
                            <name><xsl:value-of select="excursions_catalog/excursions/excursion/basic_info/name"/></name>
                            <country><xsl:value-of select="excursions_catalog/excursions/excursion/basic_info/country"/></country>
                        </basic_info>
                        <secondary_info>
                            <about_town>
                                <landmarks><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_town/landmarks"/></landmarks>
                                <history><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_town/history"/></history>
                                <climate><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_town/climate"/></climate>
                                <time_zone><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_town/time_zone"/></time_zone>
                                <currency><xsl:value-of select="excursions_catalog/excursions/excursion/secondary_info/about_town/currency/@countryCurrency"/></currency>
                            </about_town>
                        </secondary_info>
                    </excursion>
            </excursions>

        </excursions_catalog>
    </xsl:template>
</xsl:stylesheet>