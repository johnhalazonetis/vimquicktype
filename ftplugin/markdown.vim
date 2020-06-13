if exists('g:quicktex_markdown') && !exists('g:quicktex_math')
    let g:quicktex_math = {}
    finish
elseif !exists('g:quicktex_mardown') && exists('g:quicktex_math')
    let g:quicktex_markdown = {}
    finish
elseif exists('g:quicktex_markdown') && exists('g:quicktex_math')
    finish
endif

if !get(g:, 'quicktex_usedefault', 1)
    finish
endif

" Keyword mappings are simply a dictionary. Dictionaries are of the form
" "quicktex_" and then the filetype. The result of a keyword is either a
" literal string or a double quoted string, depending on what you want.
"
" In a literal string, the result is just a simple literal substitution
"
" In a double quoted string, \'s need to be escape (i.e. "\\"), however, you
" can use nonalphanumberical keypresses, like "\<CR>", "\<BS>", or "\<Right>"
"
" Unfortunately, comments are not allowed inside multiline vim dictionaries.
" Thus, sections and comments must be included as entries themselves. Make
" sure that the comment more than one word, that way it could never be called
" by the ExpandWord function


" LaTeX Mode Keywords {{{

let g:quicktex_markdown = {
    \' ' : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'m' : '\( <+++> \) <++>',
\'Section: Environments' : 'COMMENT',
    \'align' : '$$\begin{align}<+++>\end{align}$$',
    \'nalign' : '$$\begin{align*}<CR><+++><CR>\\end{align*}$$',
    \'neqn' : '$$\begin{equation*}<+++>\end{equation*}$$ ',
    \'fig' : '![](./Figures/<+++>)',
    \'figl' : '![](<+++>)',
    \'figc' : '<img align="center" width="<+++>%" src="./Figures/<++>">',
    \'figcl' : '<img align="center" width="<+++>%" src="">',
    \'optprob' : "\$$\begin{align}\<CR>&\\min_{<+++>} <++>\<CR>\\text{subject to}\ \\quad &<++>\\nonumber<++>\<CR>\\end{align}$$ \<CR>\<++>  ",
    \'noptprob' : "\$$\begin{align*}\<CR>&\\min_{<+++>} <++>\<CR>\\text{subject to}\ \\quad &<++> \<CR>\\end{align*}$$ \<CR>\<++>  ",
    \
\'Section: Other Commands' : 'COMMENT',
    \'para' : '(<+++>)',
    \'quote'   : '> <+++>',
    \'bold' : '**<+++>**',
    \'ital' : '*<+++>*',
    \'supscr' : '<sup> <+++> </sup>',
    \'subscr' : '<sub> <+++> </sub>',
    \'anch' : ' <a name"<+++>"><\a>',
    \
\'Section: Common Sets' : 'COMMENT',
    \'mbn' : '$$\mathbb{N}$$ ',
    \'mbz' : '$$\mathbb{Z}$$ ',
    \'mbq' : '$$\mathbb{Q}$$ ',
    \'mbr' : '$$\mathbb{R}$$ ',
    \'mbc' : '$$\mathbb{C}$$ ',
    \'mba' : '$$\mathbb{A}$$ ',
    \'mbf' : '$$\mathbb{F}$$ ',
\'Section: Fancy Variables' : 'COMMENT',
    \'mca' : '$$\mathcal{A}$$ ',
    \'mco' : '$$\mathcal{O}$$ ',
    \'mcn' : '$$\mathcal{N}$$ ',
    \'mcp' : '$$\mathcal{P}$$ ',
    \'mct' : '$$\mathcal{T}$$ ',
    \'mcc' : '$$\mathcal{C}$$ ',
    \'mcm' : '$$\mathcal{M}$$ ',
    \'mcf' : '$$\mathcal{F}$$ ',
    \'mcz' : '$$\mathcal{Z}$$ ',
    \'mci' : '$$\mathcal{I}$$ ',
    \'mcb' : '$$\mathcal{B}$$ ',
    \'mcl' : '$$\mathcal{L}$$ ',
    \'mcv' : '$$\mathcal{V}$$ ',
    \'mce' : '$$\mathcal{E}$$ ',
\'Section: Greek Letters' : 'COMMENT',
    \'alp'     : '$$\alpha$$ ',
    \'bet'     : '$$\beta$$ ',
    \'gam'     : '$$\gamma$$ ',
    \'del'     : '$$\delta$$ ',
    \'eps'     : '$$\epsilon$$ ',
    \'veps'    : '$$\varepsilon$$ ',
    \'zeta'    : '$$\zeta$$ ',
    \'eta'     : '$$\eta$$ ',
    \'thet'    : '$$\theta$$ ',
    \'iota'    : '$$\iota$$ ',
    \'kap'     : '$$\kappa$$ ',
    \'lamb'    : '$$\lambda$$ ',
    \'mu'      : '$$\mu$$ ',
    \'nu'      : '$$\nu$$ ',
    \'xi'      : '$$\xi$$ ',
    \'omeg'    : '$$\omega$$ ',
    \'pi'      : '$$\pi$$ ',
    \'rho'     : '$$\rho$$ ',
    \'sig'     : '$$\sigma$$ ',
    \'tau'     : '$$\tau$$ ',
    \'upsilon' : '$$\upsilon$$ ',
    \'vphi'    : '$$\varphi$$ ',
    \'phi'     : '$$\phi$$ ',
    \'chi'     : '$$\chi$$ ',
    \'psi'     : '$$\psi$$ ',
    \
\}

" }}}
