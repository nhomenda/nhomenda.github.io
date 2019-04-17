(: Extracting data from EAD collections for analysis. :)
declare default element namespace "urn:isbn:1-931666-22-9";
<findingaids>
{
for $x in collection("file:///c:/Users/nhomenda/Desktop/EAD-dump-2019-04-09/?select=*.xml")
(: Mac OS X format: ("file:/Users/nhomenda/Desktop/EAD-dump-2019-04-09/?select=*.xml") :)

(: order by number(substring-before($x/ead/archdesc/did/unitdate[@encodinganalog='245$f' and contains(@normal, '/') and @type='inclusive'][1]/@normal, '/')) ascending :)
return 
<item>
<eadid>{data(normalize-space($x/ead/eadheader/eadid))}</eadid>
<repo>{data(normalize-space($x/ead/archdesc/did/repository[1]/corpname[1]))}</repo>
<eadheadertitle>{data(normalize-space($x/ead/eadheader/filedesc/titlestmt/titleproper[1]))}</eadheadertitle>
</item>
}

</findingaids>