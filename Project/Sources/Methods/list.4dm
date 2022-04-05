//%attributes = {}
// Use Copy parameter to make a concatenation, in this case, create an ordered or unordered HTML list

#DECLARE($type : Text)->$html : Text
C_TEXT:C284(${1})

var $value : Collection
$value:=Copy parameters:C1790(2)  // List of elements

$html:="<"+$type+"l><li>"
$html+=$value.join("</li><li>")
$html+="</li></"+$type+"l>"
return $html