" Vim color file
" ************************************************************************************************

" Color scheme: Shades of pastel
" Author: WernerFP - https://github.com/WernerFP
" Version: 1.0
" License: GPL-3.0+

" Syntax color table
" ************************************************************************************************
" #D3D7CF 188 -> Normal
" #7F8182 245 -> Comment
" #93C7C4 116 -> Conditional Define MatchParen Repeat
" #8BC7C4 116 -> Keyword Statement
" #86CAD9 116 -> PreCondit
" #7FA8D4 110 -> Tag Variable
" #65A1F0  74 -> Structure Operator
" #B99EE3 183 -> Character Delimiter Directory Include SpecialChar PreProc
" #F54985 204 -> StorageClass Type
" #DE5550 167 -> Boolean
" #E06767 167 -> Title
" #D48645 231 -> Constant Float Number
" #FA9F7B 216 -> Special
" #EBA7A7 216 -> Pseudo
" #C7C283 186 -> String
" #6BB88A  72 -> Function
" #8ECC7E 113 -> Identifier Macro

" Start off
" ************************************************************************************************
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Shades of pastel"

" General colors
" ************************************************************************************************
hi Normal         ctermfg=188  ctermbg=234  cterm=NONE   guifg=#D3D7CF guibg=#191919 gui=NONE

hi NonText        ctermfg=245  ctermbg=234  cterm=NONE   guifg=#7F8182 guibg=#191919 gui=NONE
hi SpecialKey     ctermfg=237  ctermbg=234  cterm=NONE   guifg=#474747 guibg=#191919 gui=NONE

hi Cursor         ctermfg=234  ctermbg=255  cterm=NONE   guifg=#191919 guibg=#ffffff gui=NONE
hi CursorColumn   ctermfg=NONE ctermbg=16   cterm=NONE   guifg=NONE    guibg=#2C2C2B gui=NONE
hi CursorLine     ctermfg=NONE ctermbg=16   cterm=NONE   guifg=NONE    guibg=#2C2C2B gui=NONE
hi MatchParen     ctermfg=167  ctermbg=NONE cterm=bold   guifg=#DE5550 guibg=#191919 gui=bold
hi Visual         ctermfg=NONE ctermbg=238  cterm=NONE   guifg=NONE    guibg=#474747 gui=NONE

hi LineNr         ctermfg=243  ctermbg=234  cterm=NONE   guifg=#767874 guibg=#191919 gui=NONE
hi VertSplit      ctermfg=239  ctermbg=239  cterm=NONE   guifg=#434343 guibg=#434343 gui=NONE
hi StatusLine     ctermfg=188  ctermbg=239  cterm=bold   guifg=#D3D7CF guibg=#434343 gui=bold
hi StatusLineNC   ctermfg=188  ctermbg=239  cterm=NONE   guifg=#D3D7CF guibg=#434343 gui=NONE
hi Folded         ctermfg=253  ctermbg=240  cterm=bold   guifg=#D3D7CF guibg=#525252 gui=bold
hi ColorColumn    ctermfg=NONE ctermbg=235  cterm=NONE   guifg=NONE    guibg=#202020 gui=NONE

hi ErrorMsg       ctermfg=231  ctermbg=166  cterm=NONE   guifg=#F0F0F0 guibg=#B55D14 gui=NONE
hi ModeMsg        ctermfg=188  ctermbg=24   cterm=NONE   guifg=#D3D7CF guibg=#005F87 gui=NONE
hi WarningMsg     ctermfg=231  ctermbg=124  cterm=NONE   guifg=#F0F0F0 guibg=#C23B22 gui=NONE
hi Question       ctermfg=42   ctermbg=NONE cterm=NONE   guifg=#00D7AF guibg=NONE    gui=NONE

hi Pmenu          ctermfg=188  ctermbg=238  cterm=NONE   guifg=#D3D7CF guibg=#404040 gui=NONE
hi PmenuSbar      ctermfg=NONE ctermbg=237  cterm=NONE   guifg=NONE    guibg=#323232 gui=NONE
hi PmenuThumb     ctermfg=NONE ctermbg=245  cterm=NONE   guifg=NONE    guibg=#898989 gui=NONE
hi PmenuSel       ctermfg=255  ctermbg=244  cterm=NONE   guifg=#FFFFFF guibg=#787878 gui=NONE

hi Search         ctermfg=234 ctermbg=223   cterm=NONE   guifg=#191919 guibg=#FFD7AF gui=NONE
hi IncSearch      ctermfg=234 ctermbg=223   cterm=NONE   guifg=#191919 guibg=#FFD7AF gui=NONE

" Syntax colors
" ************************************************************************************************
hi Boolean        ctermfg=167  ctermbg=NONE cterm=bold   guifg=#DE5550 guibg=NONE    gui=bold

hi Character      ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE
hi Comment        ctermfg=245  ctermbg=NONE cterm=italic guifg=#7F8182 guibg=NONE    gui=italic
hi Conditional    ctermfg=116  ctermbg=NONE cterm=bold   guifg=#93C7C4 guibg=NONE    gui=bold
hi Constant       ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#D48645 guibg=NONE    gui=NONE

hi Define         ctermfg=116  ctermbg=NONE cterm=bold   guifg=#93C7C4 guibg=NONE    gui=bold
hi Delimiter      ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE
hi Directory      ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE
hi Float          ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#D48645 guibg=NONE    gui=NONE

hi Error          ctermfg=255  ctermbg=167  cterm=NONE   guibg=NONE    guisp=#FF0000 gui=undercurl
hi Exception      ctermfg=255  ctermbg=97   cterm=NONE   guifg=#F0F0F0 guibg=#714FA6 gui=NONE

hi Function       ctermfg=72   ctermbg=NONE cterm=NONE   guifg=#6BB88A guibg=NONE    gui=NONE

hi Identifier     ctermfg=113  ctermbg=NONE cterm=NONE   guifg=#8ECC7E guibg=NONE    gui=NONE
hi Include        ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE

hi Keyword        ctermfg=116  ctermbg=NONE cterm=bold   guifg=#8BC7C4 guibg=NONE    gui=bold

hi Label          ctermfg=116  ctermbg=NONE cterm=bold   guifg=#8BC7C4 guibg=NONE    gui=bold

hi Macro          ctermfg=113  ctermbg=NONE cterm=NONE   guifg=#8ECC7E guibg=NONE    gui=NONE

hi Number         ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#D48645 guibg=NONE    gui=NONE

hi Operator       ctermfg=74   ctermbg=NONE cterm=NONE   guifg=#65A1F0 guibg=NONE    gui=NONE

hi PreCondit      ctermfg=116  ctermbg=NONE cterm=NONE   guifg=#86CAD9 guibg=NONE    gui=NONE
hi PreProc        ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE

hi Repeat         ctermfg=116  ctermbg=NONE cterm=bold   guifg=#93C7C4 guibg=NONE    gui=bold

hi Special        ctermfg=216  ctermbg=NONE cterm=NONE   guifg=#FA9F7B guibg=NONE    gui=NONE
hi SpecialChar    ctermfg=183  ctermbg=NONE cterm=NONE   guifg=#B99EE3 guibg=NONE    gui=NONE
hi Statement      ctermfg=116  ctermbg=NONE cterm=bold   guifg=#8BC7C4 guibg=NONE    gui=bold
hi StorageClass   ctermfg=204  ctermbg=NONE cterm=NONE   guifg=#F54985 guibg=NONE    gui=NONE
hi String         ctermfg=186  ctermbg=NONE cterm=NONE   guifg=#C7C283 guibg=NONE    gui=NONE
hi Structure      ctermfg=74   ctermbg=NONE cterm=NONE   guifg=#65A1F0 guibg=NONE    gui=NONE
hi SpecialComment ctermfg=245  ctermbg=NONE cterm=italic guifg=#7F8182 guibg=NONE    gui=italic

hi Tag            ctermfg=110  ctermbg=NONE cterm=NONE   guifg=#7FA8D4 guibg=NONE    gui=NONE
hi Title          ctermfg=167  ctermbg=NONE cterm=bold   guifg=#E06767 guibg=NONE    gui=bold
hi Todo           ctermfg=236  ctermbg=230  cterm=NONE   guifg=#000000 guibg=#FFFFD7 gui=NONE
hi Type           ctermfg=204  ctermbg=NONE cterm=NONE   guifg=#F54985 guibg=NONE    gui=NONE

" Additional modifications
" ************************************************************************************************
hi Underlined     cterm=underline    gui=underline
hi Italic         cterm=italic       gui=italic
hi Bold           cterm=bold         gui=bold
hi BoldItalic     cterm=bold,italic  gui=bold,italic

hi Pseudo         ctermfg=216  ctermbg=NONE cterm=italic guifg=#EBA7A7 guibg=NONE    gui=italic
hi Variable       ctermfg=110  ctermbg=NONE cterm=italic guifg=#7FA8D4 guibg=NONE    gui=italic


" Language specifics
" ************************************************************************************************

" ASP
" ************************************************************************************************
hi link AspVBSMethods                PreCondit
hi link AspVBSFunction               Character

" BiBTeX
" ************************************************************************************************
hi link bibKey                       Function
hi link bibType                      Type
hi link bibVariable                  Special

" C
" ************************************************************************************************
hi cConstant                         ctermfg=74 guifg=#65A1F0
hi link cDefine                      Define
hi link cSpecial                     SpecialChar

" C++
" ************************************************************************************************
hi link cppStatement                 Keyword

" CoffeeScript
" NB: Plugin https://github.com/kchmck/vim-coffee-script
" ************************************************************************************************
hi link coffeeConditional            Keyword
hi link coffeeGlobal                 Type
hi link coffeeObjAssign              Function
hi link coffeeOperator               Tag
hi link coffeeSpecialIdent           SpecialChar

" CSS
" ************************************************************************************************
hi link cssAttr                      Structure
hi link cssAttributeSelector         Identifier
hi link cssBraceError                Normal
hi link cssBraces                    Normal
hi link cssClassName                 Identifier
hi link cssColor                     SpecialChar
hi link cssColorProp                 SpecialChar
hi link cssFunctionName              SpecialChar
hi link cssIdentifier                Identifier
hi link cssImportant                 Keyword
hi link cssProp                      PreCondit
hi link cssPseudoClassId             Pseudo
hi link cssTagName                   Type
hi link cssUnitDecorators            SpecialChar

" SCSS, SASS
" *****************
hi link cssFunction                  Identifier
hi link sassIdChar                   Identifier
hi link sassClassChar                Identifier

" Diff
" ************************************************************************************************
hi DiffAdd               ctermfg=255 ctermbg=28  cterm=NONE guifg=#F0F0F0 guibg=#008700 gui=NONE
hi DiffDelete            ctermfg=255 ctermbg=124 cterm=NONE guifg=#F0F0F0 guibg=#A00000 gui=NONE
hi DiffChange            ctermfg=255 ctermbg=31  cterm=NONE guifg=#F0F0F0 guibg=#0087D7 gui=NONE
hi DiffText              ctermfg=255 ctermbg=61  cterm=NONE guifg=#F0F0F0 guibg=#5F5FD7 gui=NONE

" Erlang
" ************************************************************************************************
hi link erlangVariable               Variable
hi link erlangOperator               Type
hi link erlangRightArrow             Type

" Go
" ************************************************************************************************
hi link goEscapeOctal                SpecialChar
hi link goEscapeC                    SpecialChar
hi link goEscapeX                    SpecialChar
hi link goEscapeU                    SpecialChar

" Haskell
" ************************************************************************************************
hi link hsOperator                   Keyword
hi link hsStructure                  Type
hi link hsVarSym                     PreCondit
hi link hsCharacter                  SpecialChar

" HTML
" ************************************************************************************************
hi link htmlTag                      Tag
hi link htmlEndTag                   Tag
hi link htmlTagName                  Tag
hi link htmlArg                      Identifier
hi link htmlLink                     SpecialChar
hi link htmlSpecialTagName           Type

" Java
" ************************************************************************************************
hi link javaOperator                 Structure
hi link javaStorageClass             PreCondit
hi link javaStatement                Identifier

" JavaScript
" ************************************************************************************************
hi link javaScriptBraces             Normal
hi link javaScriptIdentifier         Type
hi link javaScriptNumber             Number

" Json
" ************************************************************************************************
hi link jsonKeyword                  PreCondit
hi link jsonBraces                   Normal

" Lisp
" ************************************************************************************************
hi link lispEscapeSpecial            Variable
hi link lispDecl                     Type
hi lispVar                           ctermfg=72 cterm=italic guifg=#6BB88A gui=italic

" Lua
" ************************************************************************************************
hi link luaFunc                      SpecialChar
hi link luaFunction                  Type
hi link luaStatement                 PreCondit
hi link luaConstant                  Boolean
hi link luaRepeat                    Keyword
hi link luaFor                       Keyword
hi link luaCond                      Keyword
hi link luaElse                      Keyword

" Makefile
" ************************************************************************************************
hi link makeCommands                 Special
hi link makeIdent                    Variable
hi link makeSpecial                  SpecialChar

" Markdown
" ************************************************************************************************
hi ListTags           ctermfg=74  cterm=bold  guifg=#65A1F0 gui=bold
hi CodeTags           ctermfg=74 cterm=bold,underline    guifg=#65A1F0 gui=bold,underline
hi QuoteTags          ctermfg=72  cterm=bold  guifg=#6BB88A gui=bold

hi link markdownH1                   Title
hi link markdownH2                   Title
hi link markdownH3                   Title
hi link markdownH4                   Title
hi link markdownH5                   Title
hi link markdownH6                   Title
hi link markdownHeadingRule          Title
hi link markdownHeadingDelimiter     Title
hi link markdownUrlTitleDelimiter    Title
hi link markdownLinkText             SpecialChar
hi link markdownUrl                  Function
hi link markdownCodeDelimiter        CodeTags
hi link markdownListMarker           ListTags
hi link markdownOrderedListMarker    ListTags
hi link markdownBlockquote           QuoteTags
hi link markdownRule                 Identifier
hi link markdownFootnote             Special
hi link markdownFootnoteDefinition   Special
hi markdownItalic                    ctermfg=183 cterm=italic guifg=#B99EE3 gui=italic
hi link markdownItalicDelimiter      SpecialChar
hi markdownBold                      ctermfg=183 cterm=bold guifg=#B99EE3 gui=bold
hi link markdownBoldDelimiter        SpecialChar
hi markdownBoldItalic                ctermfg=183 cterm=bold,italic guifg=#B99EE3 gui=bold,italic
hi link markdownBoldItalicDelimiter  SpecialChar

" Matlab
" ************************************************************************************************
hi link matlabDelimiter              Type
hi matlabOperator                    ctermfg=74 cterm=bold guifg=#65A1F0 gui=bold

" ObjectiveC
" ************************************************************************************************
hi link objcObjDef                   Identifier
hi link objcPool                     Identifier
hi link objcHiddenArgument           Identifier

" Perl
" ************************************************************************************************
hi link perlStatement                SpecialChar
hi link perlVarPlain                 Variable
hi link perlVarPlain2                Variable
hi link perlVarNotInMatches          Variable
hi link perlVarSlash                 Variable
hi link perlSharpBang                Comment

" PHP
" ************************************************************************************************
hi link phpIdentifier                Variable
hi phpVarSelector                    ctermfg=116 cterm=italic guifg=#8BC7C4 gui=italic
hi link phpStructure                 Type
hi link phpOperator                  Special
hi link phpRelation                  Type
hi link phpParent                    Normal
hi link phpMethods                   Identifier
hi link phpFunctions                 Identifier

" Python
" ************************************************************************************************
hi link pythonRepeat                 Type
hi link pythonStatement              Type
hi link pythonOperator               Type
hi link pythonDecorator              PreCondit
hi link pythonDecoratorName          PreCondit
hi pythonConditional                 ctermfg=116 cterm=bold guifg=#86CAD9 gui=bold

" Ruby
" ************************************************************************************************
hi link rubyInstanceVariable         Variable
hi link rubyPseudoVariable           Variable
hi link rubySymbol                   SpecialChar
hi link rubyKeyword                  Statement
hi link rubyRepeat                   Statement

" Rust
" ************************************************************************************************
hi link rustMacroVariable            Variable
hi link rustOperator                 Keyword
hi link rustSigil                    Keyword
hi link rustRepeat                   Repeat
hi link rustTrait                    Title

" Samba
" ************************************************************************************************
hi link sambaKeyword                 Tag
hi link sambaSection                 Type
hi link sambaMacro                   SpecialChar
hi link sambaBoolean                 Boolean

" Scala
" ************************************************************************************************
hi scalaNameDefinition               ctermfg=72  guifg=#6BB88A
hi scalaKeyword                      ctermfg=116 cterm=bold guifg=#8BC7C4 gui=bold
hi scalaKeywordModifier              ctermfg=116 guifg=#86CAD9
hi scalaOperator                     ctermfg=74  guifg=#65A1F0
hi scalaTypeDeclaration              ctermfg=204 guifg=#F54985
hi scalaTypeTypePostDeclaration      ctermfg=204 guifg=#F54985
hi scalaInstanceDeclaration          ctermfg=116 guifg=#86CAD9
hi scalaInterpolation                ctermfg=113 guifg=#8ECC7E

" Shell
" ************************************************************************************************
hi link shCommandSub                 Special
hi link shShellVariables             Variable
hi link shOperator                   String
hi link shSetList                    Tag
hi link shSpecial                    SpecialChar
hi link shSpecialDQ                  SpecialChar
hi link shSpecialSQ                  SpecialChar
hi link shSpecialNoZS                SpecialChar
hi link shStatement                  SpecialChar

" TeX
" ************************************************************************************************
hi link texBoldStyle                 Bold
hi link texItalStyle                 Italic
hi link texBoldItalStyle             BoldItalic
hi link texItalBoldStyle             BoldItalic
hi link texMath                      Special
hi link texSection                   SpecialChar
hi link texLength                    Special
hi link texSpecialChar               Special
hi link texRefZone                   Function
hi link texStatement                 PreCondit
hi link texCmdName                   PreCondit
hi link texInputFile                 Special
hi link texBeginEndName              Identifier
hi link texCmdArgs                   Identifier

" Vim
" ************************************************************************************************
hi link vimCommentTitle              Comment
hi link vimGroup                     Function
hi link vimHiAttrib                  String
hi link vimHighlight                 Type
hi link vimHiGuiRgb                  SpecialChar
hi link vimHiNmbr                    SpecialChar
hi link vimHiTerm                    Tag

" XML
" ************************************************************************************************
hi link xmlTag                       Tag
hi link xmlEndTag                    Tag
hi link xmlTagName                   Tag
hi link xmlAttrib                    Identifier
hi link xmlAttribPunct               Identifier
hi link xmlEntity                    Special
hi link xmlEntityPunct               Special

" YAML
" ************************************************************************************************
hi link yamlBool                     Boolean
hi link yamlBlockMappingKey          Tag
hi link yamlFlowMappingKey           Variable
hi link yamlKeyValueDelimiter        Delimiter

" Zsh
" ************************************************************************************************
hi link zshCommands                  SpecialChar
hi link zshFunction                  Function
hi link zshVariable                  Variable
hi link zshDereferencing             Variable
hi link zshSubst                     Variable
hi link zshRedir                     Special
hi link zshOperator                  Special
