<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		
		
		<!-- Stiilid -->
		<link rel="stylesheet" type="text/css" href="styles.css"/>


		<h3>1. Kuvada iga reisi sihtkoht pealkirjana, kasutades 'h1'.</h3>
		<h3>2. Komponendid peavad olema kuvatud täpploeteluna 'ul'.</h3>
		<h3>3. Kolmanda taseme struktuuri andmed tuleb kuvada kollasel taustal.</h3>

		<!-- Võtame iga reis -->
		<xsl:for-each select="reisid/reis">
			<ul>

				<h1>
					<!-- h1 et sihtkohad olid päised -->
					<xsl:value-of select="sihtkoha_linn"/>
				</h1>
				<li>
					<xsl:value-of select="hind"/>
				</li>
				<li>
					<xsl:value-of select="inimeste_arv"/>
				</li>
				<li>
					<xsl:value-of select="kuupaev"/>
				</li>
				<li>
					<xsl:value-of select="lennureis_kaasas"/>
				</li>
				<ul>
					<li>
						<!-- Värvitame iga element spaniga 'yellow-bg' klassiga mis me värvitame kollaseks 'styles.css' failis -->
						<span class="yellow-bg">
							<xsl:value-of select="hotell/hotelli_aadress"/>
						</span>
					</li>
					<li>

						<span class="yellow-bg">
							<xsl:value-of select="hotell/toitumine_kaasas"/>
						</span>
					</li>
					<li>

						<span class="yellow-bg">
							<xsl:value-of select="hotell/hotelli_tarnide"/>
						</span>
					</li>
					<li>

						<span class="yellow-bg">
							<xsl:value-of select="hotell/oode_arv"/>
						</span>
					</li>
				</ul>
			</ul>

		</xsl:for-each>
		<hr/>
		<h3>4. Lisa oma tingimus (nt reisi hind või eriline soovitus peab olema esile tõstetud teatud tingimustel).</h3>
		<h4>Mul on tärnide alusel kahes erinevas tabelis luksushotellid ja soodsad hotellid.</h4>

		<h4>Luksushotellid</h4>
		<table>
			<!-- Võtame iga reis -->
			<tr>
				<th>Aadress</th>
				<th>Toitumine kaasas</th>
				<th>Hotelli tarnide arv</th>
			</tr>
			<!-- Päised -->
			<xsl:for-each select="reisid/reis/hotell">
				<!-- Vaatame kas hotelli tarnide arv on üle 4 või mitte -->
				<xsl:if test="hotelli_tarnide &gt;= 4">
					<tr>
						<td>
							<xsl:value-of select="hotelli_aadress"/>
						</td>
						<td>
							<!-- Et tabelis oleks jah/ei, mitte 1/0 - loome tingimust kui 1 - jah, kui erinev - ei -->
							<xsl:choose>
								<xsl:when test="toitumine_kaasas = 1">jah</xsl:when>
								<xsl:otherwise>ei</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<!-- Et 5 tarniga oleks erinev - loome tingimust kui 5 siis paks tekst -->
							<xsl:choose>
								<xsl:when test="hotelli_tarnide = 5">
									<strong>
										<xsl:value-of select="hotelli_tarnide"/>
									</strong>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="hotelli_tarnide"/>
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>

		<h4>Soodsad hotellid</h4>
		<table>
			<!-- Päised -->
			<tr>
				<th>Aadress</th>
				<th>Toitumine kaasas</th>
				<th>Hotelli tarnide arv</th>
			</tr>
			<!-- Võtame iga reis -->
			<xsl:for-each select="reisid/reis/hotell">
				<!-- Vaatame kas hotelli tarnide arv on alla 3 või mitte -->
				<xsl:if test="hotelli_tarnide &lt;= 3">
					<tr>
						<td>
							<xsl:value-of select="hotelli_aadress"/>
						</td>
						<td>
							<!-- Et tabelis oleks jah/ei, mitte 1/0 - loome tingimust kui 1 - jah, kui erinev - ei -->
							<xsl:choose>
								<xsl:when test="toitumine_kaasas = 1">jah</xsl:when>
								<xsl:otherwise>ei</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:value-of select="hotelli_tarnide"/>
						</td>
					</tr>
				</xsl:if>
			</xsl:for-each>
		</table>


		<hr/>

		<h3>5. Kuva iga reisi kogumaksumuse, liites transport, majutuse, ekskursioonide ja muude kulude hinnad kokku.</h3>
		<h4>Mul on iga viibimispäeva maksumuse arvutamine, kuna struktuuril on juba kogumaksumus.</h4>
		<ul>
			<!-- Võtame iga reis -->
			<xsl:for-each select="reisid/reis">

				<li>
					<!-- Võtame hind ja eemaldame '€' märk, kasutades 'xsl:variable' mis kirjutab muutujale -->
					<xsl:variable name="hind_cleaned" select="substring(hind, 2)"/>
					
					<!-- Asendame ',' => '.' märgiga et me saame selle numbriga jagada, sest süsteemne andmetüüp sisaldab '.' -->
					<xsl:variable name="hind_formatted" select="concat(substring($hind_cleaned, 1, string-length($hind_cleaned) - 3), '.', substring($hind_cleaned, string-length($hind_cleaned) - 1))"/>
					
					<!-- Teisendame string arvuks -->
					<xsl:variable name="hind_num" select="number($hind_formatted)"/>


					<p>
																						<!-- Jagame meie number ööde arvuga ja ühendame '€' märgiga -->
						<xsl:value-of select="sihtkoha_linn"/> - <xsl:value-of select="concat(substring($hind_num div hotell/oode_arv, 1, 5),' €')" />
					</p>
					
				</li>

			</xsl:for-each>

		</ul>

		<hr/>

		<h3>6. Filtreeri ja kuva ainult need reisid, mille transport sisaldab lennureisi.</h3>

		<h4>Reisid, mille transport sisaldab lennureisi.</h4>

		<table>
			<!-- Päised -->
			<tr>
				<th>Sihtkoha linn</th>
				<th>Hind</th>

				<th>Inimeste arv</th>
				<th>Kuupäev</th>
				<th>Lennureis kaasas kaasas</th>

				<th>Hotell</th>
				<th>Ööde arv</th>

			</tr>
			<!-- Võtame iga reis, tingimusega et lennureis on 1(on olemas) -->
			<xsl:for-each select="reisid/reis[lennureis_kaasas='1']">

					<tr>
					<td>
						<xsl:value-of select="sihtkoha_linn"/>
					</td>
					<td>
						<xsl:value-of select="hind"/>
					</td>
					<td>
						<xsl:value-of select="inimeste_arv"/>
					</td>
					<td>
						<xsl:value-of select="kuupaev"/>
					</td>
					<td>
						<!-- Et tabelis oleks jah/ei, mitte 1/0 - loome tingimust kui 1 - jah, kui erinev - ei -->
						<xsl:choose>
							<xsl:when test="lennureis_kaasas = 1">jah</xsl:when>
							<xsl:otherwise>ei</xsl:otherwise>
						</xsl:choose>
					</td>
					<td>
						<xsl:value-of select="hotell/hotelli_aadress"/>
					</td>
					<td>
						<xsl:value-of select="hotell/oode_arv"/>
					</td>
				</tr>

			</xsl:for-each>
		</table>

		<hr/>

		<h3>7. Sorteeri kõik reisid vastavalt hinnangule (nt kliendihinnang, kui selline väli on olemas XML-is, kui ei ole kasuta teine numbriline väli).</h3>

		<h4>Reisid hotelli ööde arvu järgi kahanevas järjestuses.</h4>

		<table>
			<!-- Päised -->
			<tr>
				<th>Sihtkoha linn</th>
				<th>Hind</th>

				<th>Inimeste arv</th>
				<th>Kuupäev</th>
				<th>Lennureis kaasas kaasas</th>

				<th>Hotell</th>
				<th>Ööde arv</th>

			</tr>
			<!-- Võtame iga reis -->
			<xsl:for-each select="reisid/reis">
				<!-- Kasutades 'xsl:sort' funktsiooni sorteerime reisid hotelli ööde arvu. 
				Et järgi kahanevas järjestuses kirjutame 'order="descending"'
				-->
				<xsl:sort select="hotell/oode_arv" order="descending" data-type="number"/>
				<tr>
					<td>
						<xsl:value-of select="sihtkoha_linn"/>
					</td>
					<td>
						<xsl:value-of select="hind"/>
					</td>
					<td>
						<xsl:value-of select="inimeste_arv"/>
					</td>
					<td>
						<xsl:value-of select="kuupaev"/>
					</td>
					<td>
						<!-- Et tabelis oleks jah/ei, mitte 1/0 - loome tingimust kui 1 - jah, kui erinev - ei -->
						<xsl:choose>
							<xsl:when test="lennureis_kaasas = 1">jah</xsl:when>
							<xsl:otherwise>ei</xsl:otherwise>
						</xsl:choose>
					</td>
					<td>
						<xsl:value-of select="hotell/hotelli_aadress"/>
					</td>
					<td>
						<xsl:value-of select="hotell/oode_arv"/>
					</td>
				</tr>

			</xsl:for-each>
		</table>

		<hr/>
		<h3>8. Kuva kõik xml andmed tabelina, kus read on üle rea erineva värviga.</h3>
		<h3>Paarimatu read värvitud valgeks, paarisread mustaks.</h3>


		<table>
			<!-- Päised -->
			<tr>
				<th>Sihtkoha linn</th>
				<th>Hind</th>
				<th>Inimeste arv</th>
				<th>Kuupäev</th>
				<th>Lennureis kaasas</th>
				<th>Hotelli aadress</th>
				<th>Toitumine kaasas</th>
				<th>Hotelli tarnide</th>
				<th>Ööde arv</th>
			</tr>
			<!-- Võtame iga reis -->
			<xsl:for-each select="reisid/reis">
				<tr>
					<xsl:choose>
						<!-- Kui rea number jagub kahega ilma jäägita, siis värvitame mustiga, ja tekst valgega -->
						<xsl:when test="position() mod 2 = 0">
							<xsl:attribute name="style">background-color: black; color: white;</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<!-- Kui mitte, siis värvitame valgega ja tekst mustiga -->
							<xsl:attribute name="style">background-color: white; color: black;</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<td>
						<xsl:value-of select="sihtkoha_linn"/>
					</td>
					<td>
						<xsl:value-of select="hind"/>
					</td>
					<td>
						<xsl:value-of select="inimeste_arv"/>
					</td>
					<td>
						<xsl:value-of select="kuupaev"/>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="lennureis_kaasas = 1">jah</xsl:when>
							<xsl:otherwise>ei</xsl:otherwise>
						</xsl:choose>
					</td>
					<td>
						<xsl:value-of select="hotell/hotelli_aadress"/>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="hotell/toitumine_kaasas = 1">jah</xsl:when>
							<xsl:otherwise>ei</xsl:otherwise>
						</xsl:choose>
					</td>
					<td>
						<xsl:value-of select="hotell/hotelli_tarnide"/>
					</td>
					<td>
						<xsl:value-of select="hotell/oode_arv"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>


		<!-- Oma ülesanned -->
		<hr/>
		<h2>Koosta kolm  oma ülesanded valminud xml kohta ja lahenda neid.</h2>
		<h3>1. Kuvada sihtlinnad, mille reisikuupäev oli eelmisel aastal.</h3>
		<!-- Võtame iga reis, kus aasta on eelmine aasta - 2023 -->
		<!-- Et see oleks >= xslt 2.0, siis saaks kasutada 'year()' funktsiooni-->
		<xsl:for-each select="reisid/reis[substring(kuupaev, 1, 4) = '2023']">
			<p>
				<xsl:value-of select="sihtkoha_linn"/> - <xsl:value-of select="kuupaev"/> -

			</p>
		</xsl:for-each>

		<hr/>
		<h3>2. Loetleda linnanimed tähestikulises järjekorras.</h3>
		<!-- Võtame iga reis -->
		<xsl:for-each select="reisid/reis">
			<xsl:sort select="sihtkoha_linn" order="ascending" data-type="text"/>
			<li>
				<xsl:value-of select="sihtkoha_linn"/>
			</li>
		</xsl:for-each>


		<hr/>
		<h3>3. Kuvada linn ja sinna reisimise maksumus, kuid Hiina jüaanides vahetuskursi järgi.</h3>

		
		
		
		<xsl:variable name="vahetuskurss" select="7.6"/>
		
		<!-- Võtame iga reis -->
		<xsl:for-each select="reisid/reis">
			<xsl:variable name="hind_cleaned" select="substring(hind, 2)"/>

			<xsl:variable name="hind_formatted" select="concat(substring($hind_cleaned, 1, string-length($hind_cleaned) - 3), '.', substring($hind_cleaned, string-length($hind_cleaned) - 1))"/>

			<xsl:variable name="hind_num" select="number($hind_formatted)"/>
			<li>
				<xsl:value-of select="sihtkoha_linn"/> -

				<xsl:value-of select="concat($hind_num * $vahetuskurss, ' ¥')"/>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
