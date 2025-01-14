---
title: "Levyhyllyä lunastamassa osa 2, eli miten rakensin itselleni henkilökohtaisen Spotifyn"
date: 2025-01-14T17:10:00+02:00
draft: false
slug: levyhyllya-lunastamassa-2
tags:
    - musiikki
    - tekniikka
---

Kirjoitin reilut neljä vuotta sitten siitä, miten olin [alkanut jälleen hankkia][osa 1] musiikkia streaming-palveluiden käyttämisen ohella. Tässä vaiheessa en ollut vielä löytänyt itselleni mieluista tapaa kuunnella musiikkikokoelmaani miltä tahansa laitteelta. Sain eräässä tarmonpuuskassani viimein ratkaistua tämän ongelman tavalla, johon olen käytännössä täysin tyytyväinen. Tässä kirjoituksessa kerron mistä palikoista streaming-kokonaisuuteni on rakennettu, miten käytän niitä ja mitä jatkokehitettävää niissä vielä on. Kerron samalla musiikin arkistoinnista ja metadatan hallinnasta yleisemminkin.<!--more-->

**Sisältövaroitus**: Tämä kirjoitus sisältää todella syvän pään musiikki-, tietotekniikka- ja arkistonörtteilyä. Ja vähän angstiakin.

Aluksi lyhyt yhteenveto valitsemistani palveluista ja työkaluista:

* CD-levyjen rippaus eli kopiointi tietokoneelle: [cyanrip][cyanrip]
* Metatiedon siivous ja ylläpito: [Beets][beets] + [MusicBrainz][musicbrainz]
*  Streaming-palvelin ja musiikin kuuntelu selaimella: [LMS][lms]
* Musiikin kuuntelu puhelimella: [Play:sub][play:sub]

## CD-levyt tiedostoiksi

Kuten aiemmassa kirjoituksessani kerroin, hankin jonkin verran musiikkia CD-levyinä. Se on usein kaikkein edullisin tapa hankkia musiikkia häviöttömässä muodossa, etenkin jos kyseessä sattuu olemaan vähänkin vanhempi ja myydympi julkaisu. En etsi ulkoisesti täydellisiä kopioita enkä harvinaisia painoksia: Kunhan sisältö on kohdillaan ja itse levy soi moitteetta, niin lopun ratkaisee hinta. Esimerkki: Hankin muutama vuosi sitten suhteellisen edullisesti The Beatles in Mono -boksin. Kyseinen yksilö oli sen verran räjähtäneessä kunnossa etteivät levynkeräilijät katsoisikaan sitä kohti, mutta itse levyjen kunto oli tip top.

Minun käytössäni CD-levyt ovat ikään kuin arkistokappaleita ja pakollinen fyysinen paha, eli en kuuntele musiikkia niiltä käytännössä koskaan. Varsinainen kuuntelu tapahtuu aina tietokoneella tai puhelimella. Tästä syystä haluan siirtää levyt tiedostomuotoon mahdollisimman huolellisesti.

Homma kuulostaa yksinkertaiselta, onhan musiikki CD-levyllä bitteinä samalla tavalla kuin kovalevylläkin. Sitä se ei kuitenkaan ole. Jo formaattina audio-CD soveltuu huonosti tämänkaltaiseen kopiointiin, koska sen lukeminen vaatii herkkyyttä ja tarkkuutta, kuten jokainen kannettavia CD-soittimia käyttänyt varmasti muistaa. Lisäksi useimpia tietokoneiden cd-asemia ei olla suunniteltu lukemaan musiikki-CD-levyjä, ja etenkin halvemman pään CD-asemien virhemarginaalit voivat olla melkoisia. Käytännössä kopiointivirheet ilmenevät pätkivinä ja "hyppivinä" tiedostoina. Kokonaan oma lukunsa ovat kaltoin kohdellut CD-levyt, joista oikeat CD-soittimetkaan eivät meinaa selvitä.[^1]

iTunes ja muut yleisesti CD-levyjen kopiointiin käytetyt ohjelmat eivät välitä tuon taivaallista tällaisista seikoista. Niissä on priorisoitu kopiointinopeus tarkkuuden edelle. Siksi niillä luodut tiedostot voivat teoriassa pätkiä vaikka levyn kunto olisi moitteeton, ja vähänkin huonommassa kunnossa olevia levyjä niille on turha edes tarjota.

CD-levyjen kopiointiin kannattaakin käyttää jotain sellaista ohjelmaa, joka osaa huomioida levyjen lukemisen virhealttiuden. Käytin vuosia [Exact Audio Copy][eac] -nimistä ohjelmaa CD-levyjen kopiointiin, ja suosittelen sitä edelleenkin. Satuin KUITENKIN löytämään aivan sattumalta [cyanripin][cyanrip], joka toimii omiin käyttötarpeisiini vielä paremmin. Se on komentorivipohjainen ja siksi hyvin automatisoitavissa, ja siinä on erinomainen tuki MusicBrainz-tietokannalle, josta lisää hieman myöhemmin.

Tällaisilla työkaluilla CD-levyjen kopiointi ei ole mitään nopeaa hommaa. Prosessiin kuluu omien havaintojeni mukaan vähintään levyn keston verran ja usein enemmänkin. Toisaalta kopioiminen ei edellytä jatkuvaa tarkkailua, eli sitä on helppo pyörittää taustalla muun tekemisen lomassa. Jos työn tahtoo tehdä vain kerran, kannattaa se tehdä heti kunnolla.

## Metadata ojennukseen

Kunnollinen metadata, tuttavallisemmin tagit, ovat toiseksi tärkein huomioitava asia heti äänenlaadun jälkeen. Jos tiedostoihin ei olla kirjattu kunnolla kaikkia esittäjä- ja levytietoja, ei kappaleiden hakeminen vähänkään suuremmasta kirjastosta ole käytännössä mahdollista. Tätä nykyä tageista ei ole onneksi suoranainen pakko huolehtia, koska useimmiten ne ovat cd-kopiointiohjelmien ja tiedostoja myyvien kauppojen jäljiltä edes jonkinlaisessa kunnossa. Ongelmia voi tulla eteen jos julkaisu käsittää useamman CD:n, tai jos sillä esiintyy useita eri artisteja.

Oma musiikkikirjastoni on lähes kaksikymmentä vuotta sitten aloitettu, vajaat 10 000 kappaletta käsittävä kokoelma mitä sekalaisimmista lähteistä haalittua musiikkia. Vaikka olinkin pitänyt tiedostojen tageista hyvää huolta, oli aukkopaikkoja vielä runsaasti.

Kunnollisen kertarykäisyn hengessä päätin käydä koko musiikkikirjastoni läpi jollakin ohjelmalla, joka varmistaisi tagien sisältävän varmasti oikeaa ja riittävän kattavaa informaatiota. Tähän tarkoitukseen valitsin [Beetsin][beets], joka on tekijöidensä mukaan "the music geek's media organizer". Tämä ei totisesti ole liioittelua, vaan kaikenlaisia ominaisuuksia musiikkikokoelman käsittelyyn, lajitteluun, nimeämiseen ja ties mihin löytyy aivan julmetusti. Beetsin keskeisin ominaisuus on tiedostojen tagien automaattinen korjaus erilaisten musiikkitietokantojen perusteella, joista oletuksena käytetään MusicBrainzia. Tästä hommastaan se suoriutuu ällistyttävän hyvin. Virhetulkintoja tosin tulee aika-ajoin, joten ennen koko kirjaston peruuttamatonta tagien uudelleenkäsittelyä on syytä varmistaa varmuuskopioiden olevan ajan tasalla.

MusicBrainz on eräänlainen musiikkitiedon Wikipedia. Sinne on kerätty vapaaehtoispohjalta valtava määrä tietoa kappaleista, albumeista ja muusikoista. Tämän tekstin kirjoitushetkellä MusicBrainzissa on tiedot yli 2,5 miljoonasta esittäjästä ja 3,5 miljoonasta julkaisusta. MusicBrainziin kerätty metadata on yleisesti ottaen laadukasta ja riittävän kattavaa, mutta suomenkielistä musiikkia siellä voisi olla enemmänkin. Tämän projektin yhteydessä hurahdinkin aivan kunnolla MusicBrainz-editointiin, ja erilaisia lisäyksiä ja muokkauksia on tililleni ehtinyt kertyä reippaat 2500.

Musiikkikirjaston tagien tehokkaaseen massakäsittelyyn on onneksi paljon hyviä vaihtoehtoja. Jos tagien automaattinen korjaus Musicbrainz-datan mukaiseksi kiinnostaa mutta komentorivipohjaiset työkalut eivät houkuttele, kannattaa kokeilla [MusicBrainz Picardia][picard]. Jos taas ajatus koko musiikkikokoelman mankeloinnista MusicBrainzin läpi ei tunnu luontevalta vaan korjailet tageja mieluiten käsityönä ja tarpeen tullen, kannattaa silloin ottaa apuun [Mp3Tag][mp3tag] – ohjelma, joka on pysynyt ihastuttavan muuttumattomana tässä alati hullummaksi käyvässä maailmassa.

## Musiikki mukaan töihin ja puhelimeen

Musiikkikokoelmasta ei ole mitään iloa ellei sitä kuuntele. Tämä oli pitkään minun ongelmani, sillä en ollut löytänyt mieleistäni ratkaisua oman musiikkini streamaamiseen Spotifyn tapaan. Tietokoneella kuuntelemiseen minulla on viimeisen päälle hyvä ratkaisu ([Foobar2000][fb2k]), mutta tätä nykyä istun kotikoneeni ääressä melko satunnaisesti, enkä varsinkaan musiikkia kuunnellakseni.

Vaihtoehtojen puutteesta streamaussoftan etsijän ei totisesti tarvitse kärsiä. Sekä kaupallisia että avoimen lähdekoodin ratkaisuja on tarjolla kymmenittäin. Halusin tämänkin osa-alueen omaan hallintaani, sillä kaupallisilla palveluilla on tapana tulla ostetuiksi tai mennä muuten vain pilalle ajan kanssa. Niinpä keskityin tutkimaan ja vertailemaan [avoimen lähdekoodin vaihtoehtoja][awesome music streaming].

Streaming-palvelinsoftakseni valikoitui pitkän vertailun seurauksena [LMS][lms]. Se on kevyt, käyttöliittymältään minimalistinen ja sitä kehitetään aktiivisesti. LMS tukee myös Subsonic-rajapintaa, josta on tullut eräänlainen musiikkistreamauspalvelinten epävirallinen standardi. Subsonic-rajapinnalla on mahdollista toteuttaa erilaisia kuuntelusovelluksia, ja niitäkin riittää kaikille yleisimmille alustoille. Itse iPhone-käyttäjänä valitsin [Play:subin][play:Sub], joka ei käyttömukavuudessa juuri Spotifylle häviä. LMS pyörii pienellä virtuaalipalvelimella, jolla pyöritän muutamaa muutakin itse hostaamaani palvelua.

## Mitä seuraavaksi?

Tämän kokonaisuuden ensimmäinen versio on palvellut minua koko lailla erinomaisesti puoli vuotta. Se on siinä määrin helppokäyttöinen ja toimintavarma, että esimerkiksi töissä kuuntelen musiikkia Spotifysta enää poikkeustapauksissa - omassa kirjastossanikin kun riittää vielä pengottavaa.

Teräviä kulmia tosin vielä on. Käyttämäni levyjako ei ole ainakaan dockerin kanssa käytettynä erityisen vikasietoinen enkä ole ehtinyt tutkia sen tekemistä toimintavarmemmaksi, joten ssh:ta ja manuaalista uudelleenmounttailua on tarvittu aika-ajoin. Sekä LMS:ssä että Play:subissa on myös jonkin verran pieniä saavutettavuusbugeja. LMS:tä voin yrittää korjailla itsekin, ja Play:subin kehittäjälle voin antaa aiheesta palautetta.

Haluaisin vielä joskus elämässäni nähdä itse ostetun musiikin vallankumouksen, jossa edes ne omistautuneimmat musiikin kuuntelijat alkaisivat jälleen ostaa itselleen musiikkia, jota he saattaisivat kuunnella Spotifyn helppoudella. On aivan selvää, ettei sitä vallankumousta vielä näillä teknologioilla nähdä. Niin raivostuttavaa kuin se onkin, on tällaisen palvelun pystytys vielä (tieto)teknisesti suuntautuneiden ihmisten etuoikeus. Sen verran monta liikkuvaa ja manuaalisesti ylläpidettävää osaa tässä minunkin järjestelmässäni on.

Myös uuden musiikin löytäminen mietityttää minua edelleen. Streamauksen ylivoimaisesti paras puoli on se tapa, jolla se parhaimmillaan osaa tarjoilla uutta ja yllättävää musiikkia. (Paino sanalla 'parhaimmillaan'. Spotify ei ole osannut tehdä tätä temppua minulle enää vuosiin.) Tulee olemaan haaste löytää uutta ja mahdollisesti yllättävää kuunneltavaa, kun algoritmi ei ole yllättämässä. On toki olemassa alustariippumattomia musiikinsuosittelupalveluja, muun muassa itse aikoinaan paljon käyttämäni last.fm ja MetaBrainz-järjestön ylläpitämä ListenBrainz. Ne eivät kuitenkaan integroidu samalla tavalla osaksi musiikinkuunteluohjelmaani, eikä ainakaan ListenBrainzin suosittelutarjonta ole vielä saanut minua vakuuttuneeksi. Last.fm:stä sen sijaan olen löytänyt paljonkin hienoa musiikkia ennen Spotify-aikaa, ja löydän toivottavasti vastakin.

## Miksi kaikki tämä vaiva?

Kysymys on kieltämättä aiheellinen, etenkin jos sitä katsotaan nykyihmisen tehokkuuslasien läpi. Olen upottanut edellä kuvailemaani näpräämiseen aivan silmittömän määrän tunteja. Ja mitä olen näillä tunneillani saanut? Melko toimivan "Pirkka-Spotifyn", josta löytyy vain itse hankkimaani ja isolla vaivalla käsittelemääni musiikkia. Lisäksi olen näpytellyt käteni kipeiksi kaiken maailman vanhojen suomalaislevyjen metadataa niiden ehkä puolentoista ihmisen iloksi, joita ne levyt nykyään mahdollisesti saattavat kiinnostaa.  Enkö todellakaan keksisi kaikelle tälle ajalle parempaa käyttöä, kun voisin yhtä hyvin streamata musiikkini Spotifysta kuten kaikki muutkin?

Siinäpä se. Musiikilla ja järjellä ei minun katsannossani ole mitään tekemistä keskenään. Musiikki, sekä sen soittaminen että kuuntelu, on vain ja ainoastaan rakkauslaji. Minä haluan nähdä vaivaa minulle rakkaiden asioiden eteen, ja musiikki kuuluu ehdottomasti niihin.

Erilaiset streaming-palvelut Spotify etunenässä ovat passivoittaneet musiikin kuuntelijat siinä määrin, ettei äänitetyllä musiikilla tai sen tekijöillä ole enää mitään todellista arvoa. Musiikkia on saatavilla miten paljon tahansa koska tahansa. Mihinkään ei tarvitse keskittyä, eikä mistään tarvitse oppia pitämään. Aina on jotain uutta mitä voi siirtyä kuuntelemaan, kun se keskittymiskyky, joka jaksoi ennen minuuttikaupalla, alkaa valittaa kyllästymistään jo puolen minuutin kohdalla. Tietysti Spotifyta ja vastaavia palveluita voi käyttää hyväänkin, kuten uusien artistien tai musiikin lajien tutkimiseen, mutta tätä voi pitää pikemminkin riistämiselle rakennetun bisneksen sivutuotteena.

Kokonaan oma lukunsa on se tapa, jolla musiikin tekijätiedot on systemaattisesti piilotettu keskimääräiseltä musiikinkuluttajalta. Uuden, pelkästään digitaalisesti julkaistun musiikin tekijätietoja ei juuri kukaan välitä kirjata enää minnekään, eivätkä ne siksi kiinnosta enää ketään. Fyysisesti julkaistujen levyjen kansitietoja sentään löytää vaikka Discogsista, mutta vaivaa se vaatii. Siksi olen päivittänyt soittajatietoja MusicBrainz-tietokantaan aivan erityisellä innolla. Minulle on ollut valtavan merkityksellistä perehtyä eri soittajien tyyleihin ja tuotantoon, ja haluan omalta osaltani olla mahdollistamassa sitä myös muille kirjaamalla tekijätietoja avoimeen ja vapaasti käytettävään tietokantaan.

Minä en viihdy rajattomien mahdollisuuksien maailmassa. Tulen paljon paremmin toimeen kun minulla on käsissäni rajattu joukko vaihtoehtoja, joiden kanssa minun täytyy opetella tulemaan toimeen. Siksi omistamani musiikin kuuntelu tuntuu hyvältä: Tiedän, että koska hallussani ei ole loputtomasti levyjä, pitää niistä "vähistäkin" ottaa kaikki irti. On aivan selvää, ettei minusta olisi tällä luonteella tullut yhtä hyvää muusikkoa Spotify-aikana. Minun oli pakko keskittyä parhaimpina herkkyysvuosinani alle pariinkymmeneen levyyn, jotka todellakin opettelin kannesta kanteen.

En ole minkäänlainen viherpeukalo enkä kaipaa huonekasveja tai itse kasvatettuja yrttejä elämääni, mutta musiikkikokoelmani vaalimisen kautta olen ehkä oppinut ymmärtämään puutarhanhoidosta jotakin. Ainakin sen henkisen merkityksen mikä itse hoidetulla puutarhalla tai kasvimaalla voi olla. Musiikkikokoelman ylläpito edistää minun henkistä huoltovarmuuttani ja kriisinsietokykyäni. Se tuo järjestystä ja hallinnan tunnetta tähän kaoottiseen maailmaan.

Minun tuskin tarvitsee avata niitä seikkoja, joilla ikäisteni ihmisten maailmankuvan perustuksia on horjutettu viime vuosina. Tässä ajassa, jossa ihmisten digitaaliset elämät ovat suuryritysten kauppatavaraa, tulevaisuus ei tarjoile mitään odottamisen arvoista ja oma ja läheisten ihmisarvoinen elämä tuntuu ainoalta unelmoimisen arvoiselta asialta, tuntuu lohdulliselta voida vaikuttaa edes jonkin itselleen tärkeän asian säilymiseen. Maailma menee menojaan, mutta musiikki pysyy.

[^1]: Cdparanoia-ohjelmiston FAQ:ssa on aiheesta kiinnostuneille [pitkä ja mielenkiintoinen selostus](https://www.xiph.org/paranoia/faq.html#play).

[osa 1]: {{< ref "levyhyllyä-lunastamassa" >}}
[cyanrip]: https://github.com/cyanreg/cyanrip
[beets]: https://beets.io
[musicbrainz]: https://musicbrainz.org
[lms]: https://github.com/epoupon/lms
[play:sub]: https://michaelsapps.dk/playsubapp/
[eac]: https://exactaudiocopy.de/
[picard]: https://picard.musicbrainz.org/
[mp3tag]: https://www.mp3tag.de/en/index.html
[fb2k]: https://www.foobar2000.org/
[awesome music streaming]:  https://github.com/basings/selfhosted-music-overview