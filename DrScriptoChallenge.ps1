# Microsoft Dr. Scripto Cmdlet Challenge


$array = @()
$array = Get-Command -CommandType cmdlet |
ForEach-Object { $_.name.tostring() }
Foreach($cmdlet in $array)
{
 $rndChar = get-random -InputObject ($cmdlet.tochararray()) -count ($cmdlet.length/4)
 foreach($l in $rndchar)
 {
  $cmdlet = $cmdlet.Replace($l,”_”)
 }# end foreach $l
 $cmdlet
} #end foreach $cmdlet