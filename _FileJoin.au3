$input = $CmdLine[1]
$name  = stringtrimright($input, 1 + stringlen($input) - stringinstr($input, '_', 0, -1))

$split = stringsplit($input, 'of', 3)
$max   = $split[ubound($split) - 1]

for $i = 1 to $max
   $in   = $name & '_' & $i & 'of' & $max
   $file = fileopen($in, 16)
   $data = fileread($file)
   fileclose($file)
   filedelete($in)
   filewrite($name, $data)
next
