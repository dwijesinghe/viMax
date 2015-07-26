" viMax - Plugin enabling the + and - keys to trigger font size changes. (= key mimics + key)

function! ChangeFont(value)
	
	"Get current font information
	redir => curFont
	:set guifont
	redir END
	echo curFont

	"Extract the current font size
	let l:curFontSize = substitute(curFont,"^.*\:h","", "")
	let l:curFontSize = substitute(l:curFontSize,":.*$","", "")
	echo l:curFontSize

	"Build and execute font change command
	let l:curFontSize = l:curFontSize + a:value
	echo l:curFontSize
	let l:fontCmd = ":h" . l:curFontSize . ":" 
	let l:fontCmd = substitute(curFont,"\:h.*\:",l:fontCmd,"")
	let l:fontCmd = substitute(l:fontCmd,"^.*guifont",":set guifont","")
	echo l:fontCmd
	:sil execute l:fontCmd
	:normal "<cr>"
endfunction

:map - :call ChangeFont(-1)<cr><cr>
:map + :call ChangeFont(1)<cr><cr>
"Alot of people forget to press Shift when they want the plus key. 
"To make their lives easier I'll enable the = key to do the same 
"thing. But know that I am judging you >.<
:map = :call ChangeFont(1)<cr><cr>
