(: Extracting data from EAD collections for analysis. :)
declare default element namespace "urn:isbn:1-931666-22-9";
<findingaids>
{
for $x in collection("file:///c:/Users/nhomenda/Desktop/lilly_ead/?select=*.xml")
(: Mac OS X format: ("file:/Users/nhomenda/Desktop/lilly_ead/?select=*.xml") :)

(: order by number(substring-before($x/ead/archdesc/did/unitdate[@encodinganalog='245$f' and contains(@normal, '/') and @type='inclusive']/@normal, '/')) ascending :)
return 
<item>
<eadid>{data($x/ead/eadheader/eadid)}</eadid>
<repo>{normalize-space($x/ead/archdesc/did/repository[1]/corpname[1])}</repo>
<eadheadertitle>{data(normalize-space($x/ead/eadheader/filedesc/titlestmt/titleproper[1]))}</eadheadertitle>
<start>{substring-before($x/ead/archdesc/did/unitdate[@encodinganalog='245$f' and contains(@normal, '/') and @type='inclusive']/@normal, '/')}</start>
<end>{substring-after($x/ead/archdesc/did/unitdate[@encodinganalog='245$f' and contains(@normal, '/') and @type='inclusive']/@normal, '/')}</end>
</item>
}

</findingaids>
