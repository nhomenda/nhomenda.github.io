(: Extracting data from EAD collections for analysis. :)
declare default element namespace "urn:isbn:1-931666-22-9";
<findingaids>
{
for $x in collection("file:///c:/Users/nhomenda/Desktop/lilly_ead/?select=*.xml")
(: Mac OS X format: ("file:/Users/nhomenda/Desktop/lilly_ead/?select=*.xml") :)
return 
<item>
<eadid>{data($x/ead/eadheader/eadid)}</eadid>
<repo>{normalize-space($x/ead/archdesc/did/repository[1]/corpname[1])}</repo>
<eadheadertitle>{data(normalize-space($x/ead/eadheader/filedesc/titlestmt/titleproper[1]))}</eadheadertitle>
</item>
}



</findingaids>
