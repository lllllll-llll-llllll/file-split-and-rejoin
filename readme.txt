autoit scripts for file splitting and rejoining, developed with only the features i need, but regardless here it is

splitting:
via script: AutoIt3.exe _FileSplit.au3 filename bytes
via compiled: _FileSplit.exe filename bytes
pass _FileSplit a filename and the number of bytes to size each section
it will create for example if splitting "file.txt", a 20mb file into 1mb chunks -> [file.txt_1of20, file.txt_2of20 ... file.txt_20of20]
this occurs in the same folder as the original "file.txt"

joining:
via script: AutoIt3.exe _FileJoin.au3 filename
via compiled: _FileJoin.exe filename
pass _FileJoin the filename of any of the chunks and it will combine them to create the original file, deleting the chunks after
this occurs in the same folder as the chunks
