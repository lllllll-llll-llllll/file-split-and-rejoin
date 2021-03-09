$input = $CmdLine[1]
$bytes = $CmdLine[2]	; 1000000 for 1 MB, 1000 for 1 KB
$size  = FileGetSize($input)
$file = fileopen($input, 16)
$max =  ceiling($size / $bytes)

for $i = 1 to $max
   $data = fileread($file, $bytes)
   $output = $input & '_' & $i & 'of' & $max
   filewrite($output, $data)
next
