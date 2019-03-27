(: In-class XQuery 1 1:)

(: Mac OS X format: ("file:/Users/nhomenda/Desktop/catsxml/?select=*.xml") :)

<cats>
{for $files in collection("file:///c:/Users/nhomenda/Desktop/catsxml?select=*.xml")/cat_record
(: order by $files/color ascending :)
    return 
        <cat>
            <name>{data($files/name)}</name>
            <color>{data($files/color)}</color>
        </cat>}
</cats>