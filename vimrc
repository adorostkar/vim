
"***********************************************
"********** L O A D    C O N F I G S ***********
"***********************************************
for s:f in split(glob($HOME . '/.vim/rc_files/*.vim'), '\n')
    silent echom "Sourcing " . s:f
    exec "source  " . s:f
endfor

