scriptencoding utf-8
if !executable('ctags')
    let g:Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设置ctags执行路径
endif
let g:Tlist_Auto_Update=1
let g:Tlist_Auto_Open =0
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File=0
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_Menu=1
