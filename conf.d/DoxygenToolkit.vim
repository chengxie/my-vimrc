"==============================================================
"	Doxygen注释相关
"==============================================================
let g:DoxygenToolkit_briefTag_pre="@brief \t" 
let g:DoxygenToolkit_paramTag_pre="@Param \t" 
let g:DoxygenToolkit_returnTag="@Returns \t" 
let g:DoxygenToolkit_fileTag = "@file \t"
let g:DoxygenToolkit_authorTag = "@author\t"
let g:DoxygenToolkit_versionString = "$Id$"
let g:DoxygenToolkit_dateTag = "@date \t"
if $USER == 'chengxie'
	let g:DoxygenToolkit_authorName="My name is CHENG XIE. I am your God! wa hahaha..." 
else
	let g:DoxygenToolkit_authorName=$USER 
endif
"let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------------" 
"let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_compactDoc = "yes"
"let g:DoxygenToolkit_licenseTag="My own license"   <-- !!! Does not end with "\<enter>"

augroup my_augroup_DoxygenToolkit
	au! BufNewFile *.h,*.hpp,*.c,*.cpp,*.cc,*.m,*.mm,*.py,*.js exec "DoxAuthor"
augroup end
