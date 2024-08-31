set noexpandtab
set tabstop=2
set shiftwidth=2
let g:spelunker_white_list_for_user = ['graphicx', 'usepackage', 'amssymb', 'amsmath', 'mathrsfs', 'tikzset', 'amsthm', 'tikz', 'mathtools', 'declaretheorem', 'documentclass', 'thmtools', 'usetikzlibrary', 'boldsymbol', 'overline', 'inred', 'widetilde', 'emph', 'mathcal', 'mathbb', 'mathrm', 'bmatrix', 'bigl', 'bigr', 'tikzpicture', 'circ', 'fulllabel', 'infty', 'bigsqcup', 'bigcup', 'fontdimen', 'dimexpr', 'labelsize', 'bigcap', 'parbox', 'linewidth', 'eqref', 'qquad', 'amsart', 'bibliographystyle', 'mapsto', 'scriptsize', 'tikzcd', 'uparrow', 'cdot', 'verteq', 'hspace', 'cdots', 'esint', 'titlecaps', 'ascmac', 'hyperref', 'cleveref', 'fontenc', 'inputenc', 'usefont', 'hypersetup', 'linkcolor', 'numberwithin', 'crefname', 'enumi', 'enumii', 'enumiii', 'blacksquare', 'operatorname', 'mhyphen', 'maketitle', 'matchardef', 'simeq', 'widehat', 'dvipsnames', 'vspace', 'labelenumi', 'alph', 'mathbf', 'cref', 'langle', 'rangle', 'tikzit', 'varepsilon', 'axiomatization', 'axiomatisation', 'footnotesize', 'fibrewise', 'reindexing', 'opfibration', 'opfibrations', 'odot', 'monic', 'downarrow', 'rightarrow', 'leftarrow', 'preordered', 'hline', 'subfile', 'centering', 'color', 'ldots', 'acp', 'aclp']
let g:spelunker_white_list_for_user += ['doublecell', 'onepresheaf', 'catbi', 'algdbl', 'catone', 'catbi', 'mmbox', 'posetal', 'opcart', 'vertcong', 'newsubsections', 'bifibration', 'cauchisation', 'myrectangledbl', 'myrectanglefs', 'defn', 'monomorphism', 'monomorphisms', 'epimorphism', 'epimorphisms', 'stmaryrd', 'fatsemi', 'codomains', 'comonadic', 'aleiferi', 'niefield', 'carboni', 'comonoid', 'comonoids', 'comodule', 'comonoidic', 'copointed', 'copoint', 'subobject', 'subobjects', 'sofs', 'copointal', 'copointals', 'copointalic']

nnoremap <LocalLeader>tikz o\begin{tikzcd}<esc>yyplceend<esc>k
nnoremap <LocalLeader>eq o\begin{equation}<esc>yyplceend<esc>k
nnoremap <LocalLeader>def o\begin{definition}<esc>yyplceend<esc>k
nnoremap <LocalLeader>[ o\[\]<esc>hi<Cr><esc>kl
nnoremap <LocalLeader>esp o\begin{equation}<esc>yyplceend<esc>ko\begin{split}<esc>yyplceend<esc>Vk<
nnoremap <LocalLeader>item o\begin{itemize}<esc>yyplceend<esc>ko\item %<esc>
nnoremap <LocalLeader>enum o\begin{enumerate}<esc>yyplceend<esc>ko\item<esc>
nnoremap <LocalLeader>bmat o\begin{bmatrix}<esc>yyplceend<esc>k
nnoremap <LocalLeader>split o\begin{split}<esc>yyplceend<esc>k

function! Kgit()
    let inputtext = input("message ") 
    execute "!git add --all; git commit -m "."'".inputtext."'"."; git push -u"
endfunction
nnoremap <LocalLeader>git :<C-u>call Kgit()<CR>


nnoremap <LocalLeader>tabtospace :<C-u>set tabstop=4 <bar>:set expandtab <CR>ggVG>ggVG<:<C-u>set expandtab<bar>:set tabstop=2<CR>
nnoremap <LocalLeader>spacetotab :<C-u>set tabstop=4 <bar>:set noexpandtab <CR>ggVG>ggVG<:<C-u>set tabstop=2<CR>

