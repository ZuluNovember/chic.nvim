local function Theme(v)
    local hl = {}

    hl.Normal = { fg = v.Foreground.default, bg = v.Background.default }

    hl.Visual = { bg = v.Background.muted }
    hl.NormalFloat = { bg = v.Background.emphasis }
    hl.FloatBorder = { fg = v.Foreground.surface, bg = v.Background.default }

    hl.Pmenu = { bg = v.Background.emphasis }
    hl.PmenuSel = { bg = v.Background.muted, fg = v.Foreground.emphasis, bold = false }
    hl.PmenuSbar = { bg = v.Background.emphasis, fg = v.Background.muted }
    hl.PmenuThumb = { bg = v.Background.muted }

    hl.NonText = { fg = v.Foreground.surface }
    hl.Whitespace = { fg = hl.NonText.fg }
    hl.Conceal = { fg = hl.NonText.fg }

    hl.WinSeparator = { fg = v.Foreground.surface }
    hl.VertSplit = { fg = hl.WinSeparator.fg }

    hl.CursorLineNr = { bg = v.Background.muted, fg = v.Foreground.emphasis }

    hl.CursorLine = { bg = hl.CursorLineNr.bg }
    hl.CursorColumn = { bg = hl.CursorLineNr.bg }
    hl.ColorColumn = { bg = hl.CursorLineNr.bg }

    hl.SignColumn = { fg = v.Foreground.default, bg = v.Background.default }

    hl.LineNr = { fg = v.Foreground.default, bg = v.Background.muted }
    hl.LineNrAbove = { fg = v.Foreground.muted, bg = v.Background.default }
    hl.LineNrBelow = { fg = v.Foreground.muted, bg = v.Background.default }

    hl.DiffAdd = { fg = v.Colors.Info }
    hl.DiffChange = { fg = v.Colors.Caution }
    hl.DiffDelete = { fg = v.Colors.Error }
    hl.DiffText = { italic = true }

    hl.Directory = { fg = v.Colors.Hint }
    hl.EndOfBuffer = { fg = v.Foreground.surface }

    hl.Error = { fg = v.Colors.Danger, bg = v.Shade.default }
    hl.ErrorMsg = { fg = v.Colors.Error, bg = v.Shade.default }

    hl.Folded = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.FoldColumn = { fg = v.Foreground.muted }

    hl.ModeMsg = { fg = v.Foreground.default }
    hl.MoreMsg = { fg = v.Foreground.default, bold = true }

    hl.Question = { fg = v.Foreground.default, bold = true }

    hl.Search = { fg = v.Background.emphasis, bg = v.Colors.Caution }
    hl.IncSearch = hl.Search
    hl.Substitute = hl.Search

    hl.SpellBad = { sp = v.Colors.Error, undercurl = true }
    hl.SpellCap = { sp = v.Colors.Caution, undercurl = true }
    hl.SpellLocal = { sp = v.Colors.Hint, undercurl = true }
    hl.SpellRare = { sp = v.Colors.Trace, undercurl = true }

    hl.StatusLine = { fg = v.Foreground.default, bg = v.Background.muted }
    hl.StatusLineNC = { fg = v.Foreground.default, bg = v.Background.emphasis }

    hl.TabLine = hl.StatusLine
    hl.TabLineFill = { fg = v.Foreground.muted, bg = v.Background.muted }
    hl.TabLineSel = { fg = v.Foreground.default, bg = v.Background.default }

    hl.WarningMsg = { fg = v.Colors.Warn, bg = v.Shade.default }

    hl.WildMenu = { bg = v.Background.emphasis }

    hl.MatchParen = { bold = true }

    hl.DiagnosticError = { fg = v.Colors.Error, bg = 'NONE' }
    hl.DiagnosticSignError = { fg = hl.DiagnosticError.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineError = { sp = hl.DiagnosticError.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextError = { fg = hl.DiagnosticError.fg, bg = 'NONE' }
    hl.DiagnosticHint = { fg = v.Colors.Hint, bg = 'NONE' }
    hl.DiagnosticSignHint = { fg = hl.DiagnosticHint.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineHint = { sp = hl.DiagnosticHint.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextHint = { fg = hl.DiagnosticHint.fg, bg = 'NONE' }
    hl.DiagnosticInfo = { fg = v.Colors.Info, bg = 'NONE' }
    hl.DiagnosticSignInfo = { fg = hl.DiagnosticInfo.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineInfo = { sp = hl.DiagnosticInfo.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextInfo = { fg = hl.DiagnosticInfo.fg, bg = 'NONE' }
    hl.DiagnosticWarn = { fg = v.Colors.Caution, bg = 'NONE' }
    hl.DiagnosticSignWarn = { fg = hl.DiagnosticWarn.fg, bold = true, bg = 'NONE' }
    hl.DiagnosticUnderlineWarn = { sp = hl.DiagnosticWarn.fg, undercurl = true, bg = 'NONE' }
    hl.DiagnosticVirtualTextWarn = { fg = hl.DiagnosticWarn.fg, bg = 'NONE' }

    hl.Boolean = { fg = v.Colors.Builtin, italic = true }
    hl.Character = { fg = v.Colors.Info }
    hl.Comment = { fg = v.Foreground.muted }
    hl.SpecialComment = { fg = v.Foreground.muted }
    hl.Conditional = { fg = v.Colors.Keyword }

    hl.Constant = { fg = v.Colors.Error }

    hl.Define = { fg = v.Colors.Trace, italic = true }
    hl.Delimiter = { fg = v.Foreground.muted }
    hl.Float = { fg = v.Colors.Important }
    hl.Function = { fg = v.Colors.Method }
    hl.Identifier = { fg = v.Foreground.default }
    hl.Include = { fg = v.Colors.Error }
    hl.Keyword = { fg = v.Colors.Keyword, italic = true }
    hl.Label = { fg = v.Colors.Hint }
    hl.Macro = { fg = v.Colors.Hint }
    hl.Number = { fg = v.Colors.Number }
    hl.Operator = { fg = v.Colors.Danger }
    hl.PreCondit = { fg = v.Colors.Error }
    hl.PreProc = { fg = v.Colors.Hint }
    hl.Repeat = { fg = v.Colors.Keyword }
    hl.Special = { fg = v.Colors.Hint }
    hl.SpecialChar = { fg = v.Colors.Hint }
    hl.SpecialKey = { fg = v.Colors.Hint }
    hl.Statement = { fg = v.Foreground.default }
    hl.StorageClass = { fg = v.Colors.Error }
    hl.String = { fg = v.Colors.String }
    hl.Exception = { fg = v.Colors.Error }
    hl.Struct = { fg = v.Colors.Error }
    hl.Structure = { fg = v.Colors.Caution }
    hl.Tag = { fg = v.Colors.Error }
    hl.Title = { fg = v.Foreground.default, bold = true }
    hl.Todo = { fg = v.Colors.Note, bold = true }
    hl.Type = { fg = v.Colors.Type }
    hl.Typedef = { fg = v.Colors.Class }
    hl.Underlined = { underdotted = true }

    hl['@boolean'] = { fg = v.Colors.Builtin, italic = true }
    hl['@character'] = { fg = v.Colors.Hint }
    hl['@character.special'] = { fg = v.Colors.Hint }

    hl['@comment'] = { fg = hl.Comment.fg }

    hl['@constant'] = { fg = v.Foreground.emphasis }
    hl['@constant.builtin'] = { fg = v.Foreground.default, italic = true }
    hl['@constant.macro'] = { fg = v.Colors.Trace, italic = true }

    hl['@enum'] = { fg = v.Colors.Caution }

    hl['@field'] = { fg = v.Colors.Property }

    hl['@function'] = { fg = v.Colors.Method }

    hl['@preproc'] = { fg = v.Colors.Hint }
    hl['@interface'] = { fg = v.Colors.Interface }

    hl['@conditional'] = { fg = v.Colors.Keyword }

    hl['@keyword'] = { fg = v.Colors.Keyword, italic = true }
    -- hl['@keyword.jsdoc'] = { fg = v.Colors.Trace }
    -- hl['@keyword.css'] = { fg = v.Colors.Trace }
    -- hl['@keyword.rust'] = { fg = v.Colors.Trace }

    hl['@include'] = { fg = v.Colors.Trace }
    hl['@keyword.function'] = { fg = v.Colors.Keyword, italic = true }
    hl['@keyword.operator'] = { fg = v.Colors.Keyword }
    hl['@keyword.return'] = { fg = v.Colors.Keyword }

    hl['@label'] = { fg = v.Colors.Hint }
    hl['@label.vim'] = { fg = v.Colors.Accent }
    hl['@label.json'] = { fg = v.Colors.Hint }
    hl['@label.toml'] = { fg = v.Colors.Hint }

    hl['@method'] = { fg = v.Colors.Method }
    hl['@method.call'] = { fg = v.Colors.MethodCall }

    hl['@namespace'] = { fg = v.Colors.Namespace }

    hl['@float'] = { fg = v.Colors.Important }
    hl['@number'] = { fg = v.Colors.Number }
    hl['@number.bash'] = { fg = v.Colors.Number }

    hl['@operator'] = { fg = v.Colors.Danger }
    hl['@parameter'] = { fg = v.Foreground.default }
    hl['@parameter.bash'] = { fg = v.Foreground.default }
    hl['@parameter.reference'] = { fg = v.Foreground.default }

    hl['@property'] = { fg = v.Colors.Property }
    hl['@property.toml'] = { fg = v.Colors.Hint }

    hl['@punctuation'] = { fg = v.Foreground.default }

    hl['@repeat'] = { fg = v.Colors.Keyword }

    hl['@string'] = { fg = v.Colors.String }
    hl['@string.escape'] = { fg = v.Colors.Escape }
    hl['@string.regex'] = { fg = v.Colors.Hint }
    hl['@string.special'] = { fg = v.Colors.Hint }

    hl['@symbol'] = { fg = v.Colors.Hint }

    hl['@tag'] = { fg = v.Colors.Error }
    hl['@tag.rust'] = { fg = v.Colors.Hint }
    hl['@tag.rust.lua'] = { fg = v.Colors.Hint }
    hl['@tag.attribute'] = { fg = v.Colors.Trace }
    hl['@tag.delimiter'] = { fg = v.Colors.Hint }
    hl['@tag.delimiter.markdown'] = { fg = v.Colors.Note }
    hl['@tag.delimiter.markdown_inline'] = { fg = v.Colors.Note }

    hl['@text'] = { fg = v.Foreground.default }
    -- hl['@text.todo'] = { fg = chroma(v.Colors.Note):darken(0.05):to 'hex' } -- WIP
    hl['@text.emphasis'] = { italic = true, bold = true }
    hl['@text.literal'] = { fg = v.Colors.Info, italic = true }
    hl['@text.literal.markdown_inline'] = { bg = v.Background.muted, fg = v.Colors.Info }
    hl['@text.reference'] = { fg = v.Colors.Hint, underdotted = false }
    hl['@text.strong'] = { bold = true }
    hl['@text.title'] = { fg = v.Foreground.default, bold = true }
    hl['@text.underline'] = { underline = true }
    hl['@text.uri'] = { fg = v.Colors.Note, underdotted = true }

    hl['@type'] = { fg = v.Colors.Type }
    hl['@type.builtin'] = { fg = v.Colors.Builtin, italic = true }
    hl['@type.qualifier'] = { fg = v.Colors.Error }
    hl['@type.definition'] = { fg = v.Colors.Class }
    hl['@storageclass'] = { fg = v.Colors.Error }
    hl['@storageclass.lifetime'] = { fg = v.Colors.Hint }

    hl['@variable'] = { fg = v.Foreground.default }
    hl['@variable.builtin'] = { fg = v.Foreground.default, italic = true }
    hl['@variable.builtin.clojure'] = { fg = v.Foreground.default, italic = true }
    hl['@variable.builtin.javascript'] = { fg = v.Foreground.default, italic = true }

    hl.gitCommitSelectedFile = { italic = true }
    hl.gitCommitSummary = { bold = true }
    hl.gitCommitTrailerToken = { fg = v.Colors.Trace, italic = true }
    hl.gitconfigVariable = { fg = v.Colors.Accent }
    hl.gitcommitFirstLine = { bold = true }

    hl.vimContinue = { fg = v.Foreground.surface }

    hl.manSectionHeading = { fg = v.Foreground.emphasis, bold = true }

    hl.healthHelp = { fg = v.Colors.Important }
    hl.healthSuccess = { fg = v.Colors.Info }

    hl.markdownRule = { fg = v.Colors.Error }
    hl.markdownLinkText = { fg = v.Foreground.default }
    hl.markdownUrl = { fg = v.Colors.Note, underline = true }
    hl.markdownLinkDelimiter = { fg = v.Colors.Hint }
    hl.markdownH1Delimiter = { fg = v.Colors.Danger, bold = false }
    hl.markdownH2Delimiter = { fg = v.Colors.Danger, bold = false }
    hl.markdownCode = { bg = v.Background.muted }
    hl.markdownCodeDelimiter = { fg = v.Colors.Note }
    hl.markdownListMarker = { fg = v.Colors.Important }

    hl.htmlTagName = { fg = v.Colors.Error }

    hl.qfFileName = { fg = v.Colors.Hint }
    hl.qfLineNr = { bold = true }

    --- tmux
    hl.tmuxCommands = { fg = v.Colors.Trace }
    hl.tmuxFlags = { fg = v.Colors.Caution }
    hl.tmuxFormatString = { fg = v.Colors.String }

    --- Fennel
    hl.FennelStringDelimiter = { fg = v.Colors.String }
    hl.FennelParen = { fg = v.Foreground.emphasis }
    hl.FennelSpecialForm = { fg = v.Colors.Trace, italic = true }
    hl.FennelKeyword = { fg = v.Colors.Keyword }

    --- Lua
    hl.luaFunc = { fg = v.Colors.Note }
    hl.luaTable = { fg = v.Foreground.default }
    hl.luaStringDelimiter = { fg = v.Colors.String }

    --- Help
    hl.helpHyperTextEntry = { fg = v.Colors.Note, underdotted = true }
    hl.helpSectionDelim = { fg = v.Colors.Error, bold = true }
    hl.helpHyperTextJump = { fg = v.Colors.Note, underdotted = true }
    hl.helpHeader = { fg = v.Foreground.default, bold = true }
    hl.helpExample = { fg = v.Colors.Info }
    hl.helpURL = { fg = v.Colors.Note, underline = true }
    hl.helpCommand = { bg = v.Foreground.surface }

    -- `rainbow parenthesis` archieved
    hl.rainbowcol1 = { fg = v.Colors.Trace }
    hl.rainbowcol2 = { fg = v.Colors.Danger }
    hl.rainbowcol3 = { fg = v.Colors.Info }
    hl.rainbowcol4 = { fg = v.Colors.Error }
    hl.rainbowcol5 = { fg = v.Colors.Hint }
    hl.rainbowcol6 = { fg = v.Colors.Important }
    hl.rainbowcol7 = { fg = v.Colors.Warn }

    --- Highlight of indent character
    hl.IndentBlanklineChar = {
        fg = v.Foreground.surface,
        bg = 'NONE',
    }
    --- Highlight of space character.
    hl.IndentBlanklineSpaceChar = {
        fg = 'NONE',
        bg = 'NONE',
    }
    --- Highlight of space character on blank lines.
    hl.IndentBlanklineSpaceCharBlankline = {
        fg = 'NONE',
        bg = 'NONE',
    }

    --- Highlight of indent character when base of current context
    hl.IndentBlanklineContextChar = {
        fg = v.Foreground.muted,
        bg = 'NONE',
    }

    --- Highlight of space characters one indent level of the current context.
    hl.IndentBlanklineContextSpaceChar = {
        fg = 'NONE',
        bg = 'NONE',
    }

    --- Highlight of the first line of the current context.
    hl.IndentBlanklineContextStart = {
        fg = 'NONE',
        bg = 'NONE',
        sp = v.Foreground.muted,
    }

    hl.CmpItemAbbrDeprecated = { strikethrough = true }
    hl.CmpItemKindStruct = { fg = v.Colors.Caution }
    hl.CmpItemKindFunction = { fg = v.Colors.Note }
    hl.CmpItemKindText = { fg = v.Foreground.default }
    hl.CmpItemKindClass = { fg = v.Colors.Caution }
    hl.CmpItemKindValue = { fg = v.Colors.Danger }
    hl.CmpItemKindEnum = { fg = v.Colors.Caution }
    hl.CmpItemKindInterface = { fg = v.Colors.Interface }
    hl.CmpItemKindMethod = { fg = v.Colors.Method }
    hl.CmpItemKindUnit = { fg = v.Colors.Error }
    hl.CmpItemKindConstant = { fg = v.Foreground.emphasis }
    hl.CmpItemKindField = { fg = v.Colors.Note }
    hl.CmpItemKindModule = { fg = v.Colors.Caution }
    hl.CmpItemKindKeyword = { fg = v.Colors.Keyword }
    hl.CmpItemKindEnumMember = { fg = v.Foreground.emphasis }
    hl.CmpItemKindProperty = { fg = v.Colors.Property }
    hl.CmpItemKindOperator = { fg = v.Colors.Danger }
    hl.CmpItemKindReference = { fg = v.Foreground.default }
    hl.CmpItemKindSnippet = { fg = v.Foreground.emphasis }
    hl.CmpItemKindTypeParameter = { fg = v.Colors.Caution }
    hl.CmpItemKindVariable = { fg = v.Foreground.default }

    hl.LeapMatch = { fg = v.Background.emphasis, bg = v.Colors.Danger, bold = true }
    hl.LeapLabelPrimary = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }
    hl.LeapLabelSecondary = { fg = v.Background.emphasis, bg = v.Colors.Warn, bold = true }
    hl.LeapLabelSelected = { fg = v.Background.emphasis, bg = v.Colors.Important, bold = true }
    hl.LeapBackdrop = { fg = v.Foreground.surface, bg = v.Background.emphasis }

    hl.Sneak = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }
    hl.SneakLabel = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }

    hl.GitSignsDelete = { fg = v.Colors.Error }
    hl.GitSignsChange = { fg = v.Colors.Caution }
    hl.GitSignsAdd = { fg = v.Colors.Info }

    hl.packerHash = { fg = v.Colors.Error }
    hl.packerString = { fg = v.Colors.String }
    hl.packerStatusSuccess = { fg = v.Colors.Info }

    hl.LspReferenceText = { underline = true, sp = v.Foreground.muted, bg = 'NONE', fg = 'NONE' }
    hl.LspReferenceRead = { underline = true, sp = v.Foreground.muted, bg = 'NONE', fg = 'NONE' }
    hl.LspReferenceWrite = { underline = true, sp = v.Foreground.muted, bg = 'NONE', fg = 'NONE' }

    hl.TelescopeBorder = { fg = v.Foreground.surface }
    hl.TelescopeTitle = { fg = v.Foreground.default, bold = true }
    hl.TelescopePromptCounter = { fg = v.Foreground.default }
    hl.TelescopeMatching = { bg = v.Background.default }
    hl.TelescopeSelectionCaret = { fg = v.Foreground.default }
    hl.TelescopeSelection = { bg = v.Background.Selection }

    hl.FloatTitle = { fg = v.Foreground.muted }

    hl.FocusedSymbol = { bg = v.Background.muted }
    hl.TroubleIndent = { bg = v.Background.default }
    hl.TroubleLocation = { bold = true }

    hl.NvimTreeNormal = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NvimTreeRootFolder = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NvimTreeIndentMarker = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.NvimTreeOpenedFolderName = { underdotted = true }
    hl.NvimTreeOpenedFile = { bg = v.Background.muted }
    hl.NvimTreeFolderName = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NvimTreeEmptyFolderName = { fg = v.Foreground.muted }
    hl.NvimTreeFolderIcon = { fg = v.Foreground.muted }
    hl.NvimTreeExecFile = { fg = v.Colors.Info, bold = true, bg = v.Shade.default }
    hl.NvimTreeFileDeleted = { fg = v.Foreground.muted }
    hl.NvimTreeFileNew = { fg = v.Background.emphasis, bg = v.Shade.default }
    hl.NvimTreeSpecialFile = { fg = v.Foreground.default, bg = v.Shade.default }
    hl.NvimTreeGitDirty = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.NvimTreeGitStaged = { fg = v.Colors.Info, bg = v.Shade.default }
    hl.NvimTreeGitRenamed = { fg = v.Colors.Caution, bg = v.Shade.default }
    hl.NvimTreeGitDeleted = { fg = v.Colors.Error, bg = v.Shade.default }
    hl.NvimTreeSymlink = { fg = v.Colors.Hint, bg = v.Shade.default }

    hl.NotifyERRORBorder = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNBorder = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOBorder = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGBorder = { fg = v.Colors.Danger }
    hl.NotifyTRACEBorder = { fg = v.Colors.Trace }
    hl.NotifyERRORIcon = { fg = hl.DiagnosticError.fg }
    hl.NotifyWARNIcon = { fg = hl.DiagnosticWarn.fg }
    hl.NotifyINFOIcon = { fg = hl.DiagnosticInfo.fg }
    hl.NotifyDEBUGIcon = { fg = v.Colors.Danger }
    hl.NotifyTRACEIcon = { fg = v.Colors.Trace }
    hl.NotifyERRORTitle = { fg = hl.DiagnosticError.fg, bold = true }
    hl.NotifyWARNTitle = { fg = hl.DiagnosticWarn.fg, bold = true }
    hl.NotifyINFOTitle = { fg = hl.DiagnosticInfo.fg, bold = true }
    hl.NotifyDEBUGTitle = { fg = v.Colors.Danger, bold = true }
    hl.NotifyTRACETitle = { fg = v.Colors.Trace, bold = true }
    hl.NotifyERRORBody = { fg = v.Foreground.default }
    hl.NotifyWARNBody = { fg = v.Foreground.default }
    hl.NotifyINFOBody = { fg = v.Foreground.default }
    hl.NotifyDEBUGBody = { fg = v.Foreground.default }
    hl.NotifyTRACEBody = { fg = v.Foreground.default }

    hl.DevIconGitAttributes = { fg = v.Colors.Hint }
    hl.DevIconGitCommit = { fg = v.Colors.Error }
    hl.DevIconGitConfig = { fg = v.Colors.Hint }
    hl.DevIconGitIgnore = { fg = v.Colors.Error }
    hl.DevIconGitModules = { fg = v.Colors.Hint }
    hl.DevIconDropbox = { fg = v.Colors.Note }
    hl.DevIconToml = { fg = v.Colors.Hint }
    hl.DevIconYaml = { link = 'DevIconToml' }
    hl.DevIconJson = { fg = v.Colors.Caution }
    hl.DevIconYml = { link = 'DevIconToml' }
    hl.DevIconMd = { fg = v.Foreground.emphasis }
    hl.DevIconGo = { fg = v.Colors.Note }
    hl.DevIconTs = { fg = v.Colors.Note }
    hl.DevIconTsx = { fg = v.Colors.Note }
    hl.DevIconDsStore = { fg = v.Foreground.muted }
    hl.DevIconDockerfile = { fg = v.Colors.Note }
    hl.DevIconScheme = { fg = v.Foreground.emphasis }

    hl.LspType = { fg = v.Colors.Caution }
    hl.LspClass = { fg = v.Colors.Caution }
    hl.LspDecorator = { fg = v.Colors.Trace }
    hl.LspEnumMember = { fg = v.Foreground.emphasis }
    hl.LspMacro = { fg = v.Colors.Note }
    hl.LspMethod = { fg = v.Colors.Method }
    hl.LspNamespace = { fg = v.Colors.Caution }
    hl.LspProperty = { fg = v.Colors.Property }
    hl.LspRegexp = { fg = v.Colors.Hint }
    hl.LspModifier = { fg = v.Colors.Error }
    hl.LspStruct = { fg = v.Colors.Caution }
    hl.LspTypeParameter = { fg = v.Colors.Caution }
    hl.LspVariable = { fg = v.Foreground.default }
    hl.LspFunction = { fg = v.Colors.Note }
    hl.LspKeyword = { italic = true }

    --- FzfLua
    hl.FzfLuaNormal = { fg = v.Foreground.default, bg = v.Background.default }
    hl.FzfLuaBorder = { fg = v.Foreground.surface, bg = v.Background.default }
    hl.FzfLuaCursor = { fg = v.Foreground.default, bg = v.Background.default }
    hl.FzfLuaSearch = { fg = v.Foreground.default, bg = v.Background.emphasis }
    hl.FzfLuaTitle = { fg = v.Foreground.default, bold = true }
    hl.FzfLuaCursorLine = { bg = v.Background.muted, fg = v.Foreground.emphasis }
    hl.FzfLuaCursorLineNr = { bg = v.Background.muted, fg = v.Foreground.emphasis }

    hl.dosiniLabel = { fg = v.Colors.Hint }
    hl.dosiniHeader = { fg = v.Colors.Error }

    hl.CopilotSuggestion = { bg = v.Shade.emphasis, fg = v.Foreground.muted }
    hl.NoiceCursor = { fg = v.Foreground.default }

    --- coc.nvim
    hl.CocCodeLens = { fg = v.Foreground.muted, bg = v.Shade.default }
    hl.CocDisabled = { fg = v.Foreground.muted, bg = v.Shade.default }

    hl.CocCursorRange = { fg = v.Shade.emphasis, bg = v.Colors.Important, bold = true }
    hl.CocSelectedRange = { fg = v.Shade.emphasis, bg = v.Colors.Important, bold = true }

    hl.CocListsDesc = { fg = v.Foreground.muted }

    hl.CocFloatActive = { bg = v.Background.muted, fg = v.Foreground.emphasis, bold = false }
    hl.CocFloatDividin = { fg = v.Foreground.surface }
    hl.CocFloatSbar = { bg = v.Background.emphasis, fg = v.Background.muted }
    hl.CocFloatThumb = { bg = v.Background.muted }
    -- hl.CocFloating = { bg = v.Background.emphasis }
    hl.CocFadeOut = { fg = v.Foreground.muted }
    hl.CocPumVirtualText = { fg = v.Foreground.muted }

    hl.CocHighlightRead = { underline = true, bg = 'NONE', fg = 'NONE' }
    hl.CocHighlightText = { underline = true, bg = 'NONE', fg = 'NONE' }
    hl.CocHighlightWrite = { underline = true, bg = 'NONE', fg = 'NONE' }

    hl.CocHintFloat = { bold = true, bg = 'NONE', fg = 'NONE' }
    hl.CocInlayHint = { fg = v.Foreground.muted, bg = 'NONE' }
    hl.CocHoverRange = { underline = true, bg = 'NONE', sp = 'NONE' }
    hl.CocInlayHintType = { fg = v.Foreground.muted, bg = 'NONE' }
    hl.CocInlayHintParameter = { fg = v.Foreground.muted, bg = 'NONE' }

    -- coc-lists
    hl.CocListLine = { bg = v.Background.muted, fg = v.Foreground.emphasis, bold = false }
    hl.CocListPath = { fg = v.Foreground.default }
    hl.CocListMode = { fg = v.Foreground.default }
    hl.CocListsDesc = { fg = v.Foreground.default }

    hl.CocListFgGreen = { fg = v.Colors.Info }
    hl.CocListFgRed = { fg = v.Colors.Error }
    hl.CocListFgBlue = { fg = v.Colors.Note }
    hl.CocListFgCyan = { fg = v.Colors.Hint }
    hl.CocListFgGrey = { fg = v.Foreground.muted }
    hl.CocListFgWhite = { fg = v.Foreground.emphasis }
    hl.CocListFgYellow = { fg = v.Colors.Caution }
    hl.CocListFgMagenta = { fg = v.Colors.Trace }

    hl.CocListBgGreen = { fg = v.Background.emphasis, bg = v.Colors.Info, bold = true }
    hl.CocListBgRed = { fg = v.Background.emphasis, bg = v.Colors.Error, bold = true }
    hl.CocListBgBlue = { fg = v.Background.emphasis, bg = v.Colors.Note, bold = true }
    hl.CocListBgCyan = { fg = v.Background.emphasis, bg = v.Colors.Hint, bold = true }
    hl.CocListBgGrey = { fg = v.Background.emphasis, bg = v.Foreground.muted, bold = true }
    hl.CocListBgWhite = { fg = v.Background.emphasis, bg = v.Foreground.emphasis, bold = true }
    hl.CocListBgYellow = { fg = v.Background.emphasis, bg = v.Colors.Caution, bold = true }
    hl.CocListBgMagenta = { fg = v.Background.emphasis, bg = v.Colors.Trace, bold = true }
    -- hl.CocListBgBlack = { bg = v.Shade.emphasis }

    --- coc-semantic-tokens
    --- token-types

    hl.CocSemType = { fg = v.Colors.Caution }
    hl.CocSemClass = { fg = v.Colors.Caution }
    hl.CocSemDecorator = { fg = v.Colors.Trace }
    hl.CocSemEnumMember = { fg = v.Foreground.emphasis }
    hl.CocSemMacro = { fg = v.Colors.Note }
    hl.CocSemMethod = { fg = v.Colors.Method }
    hl.CocSemNamespace = { fg = v.Colors.Caution }
    hl.CocSemProperty = { fg = v.Colors.Property }
    hl.CocSemRegexp = { fg = v.Colors.Hint }
    hl.CocSemModifier = { fg = v.Colors.Error }
    hl.CocSemStruct = { fg = v.Colors.Caution }
    hl.CocSemTypeParameter = { fg = v.Foreground.default }
    hl.CocSemVariable = { fg = hl['@variable'].fg }
    hl.CocSemFunction = { fg = v.Colors.Note }
    hl.CocSemMacroBang = { fg = v.Colors.Danger }
    hl.CocSemFormatSpecifier = { fg = v.Colors.Hint }
    hl.CocSemBuiltinAttribute = { fg = v.Colors.Trace }
    hl.CocSemColon = { fg = v.Colors.Error }
    hl.CocSemAngle = { fg = v.Colors.Danger }
    hl.CocSemCharacter = { fg = v.Colors.Hint }
    hl.CocSemKeyword = { italic = true }

    hl.CocSemComment = { fg = 'NONE' }

    --- token-modifiers
    hl.CocSemReadonlyVariable = { italic = true }
    hl.CocSemStaticVariable = { italic = true }
    hl.CocSemCallableVariable = { fg = v.Colors.Note }

    hl.CocSemDeclarationFunction = { fg = v.Colors.Hint }
    hl.CocSemDefinitionFunction = { fg = v.Colors.Hint }

    hl.CocSemReferenceMethod = { fg = v.Colors.Method }
    hl.CocSemDeclarationMethod = { fg = v.Colors.Method }
    hl.CocSemDefaultLibraryMethod = { fg = v.Colors.Method, italic = true }
    hl.CocSemDeclarationSelfKeyword = { fg = v.Colors.Keyword }

    hl.CocSemDeclarationMacro = { fg = v.Colors.Hint }

    hl.CocSemDefaultLibrary = { italic = true }

    hl.CocSemDocumentationKeyword = { fg = v.Colors.Danger }
    hl.CocSemDocumentationString = { link = 'CocSemString' }
    hl.CocSemDocumentationType = { link = 'CocSemType' }
    hl.CocSemDocumentationDecorator = { link = 'CocSemDecorator' }
    hl.CocSemDocumentationEnumMember = { link = 'CocSemEnumMember' }
    hl.CocSemDocumentationMacro = { link = 'CocSemMacro' }
    hl.CocSemDocumentationMethod = { link = 'CocSemMethod' }
    hl.CocSemDocumentationNamespace = { link = 'CocSemNamespace' }
    hl.CocSemDocumentationProperty = { link = 'CocSemProperty' }
    hl.CocSemDocumentationRegexp = { link = 'CocSemRegexp' }
    hl.CocSemDocumentationModifier = { link = 'CocSemModifier' }
    hl.CocSemDocumentationStruct = { link = 'CocSemStruct' }
    hl.CocSemDocumentationTypeParameter = { link = 'CocSemTypeParameter' }
    hl.CocSemDocumentationVariable = { link = 'CocSemVariable' }
    hl.CocSemDocumentationFunction = { link = 'CocSemFunction' }
    hl.CocSemDocumentationMacroBang = { link = 'CocSemMacroBang' }

    --- coc-symbols
    hl.CocSymbolEnum = { fg = v.Colors.Caution }
    hl.CocSymbolStruct = { fg = v.Colors.Caution }
    hl.CocSymbolText = { fg = v.Foreground.default }
    hl.CocSymbolField = { fg = v.Colors.Accent }
    hl.CocSymbolProperty = { fg = v.Colors.Property }
    hl.CocSymbolEnumMember = { fg = v.Foreground.emphasis }
    hl.CocSymbolVariable = { fg = v.Colors.Caution }
    hl.CocSymbolFunction = { fg = v.Colors.Note }

    --- coc-tree
    hl.CocTreeTitle = { fg = v.Foreground.emphasis, bold = true }
    hl.CocTreeDescription = { fg = v.Foreground.default }
    hl.CocTreeSelected = { bg = v.Background.muted }

    hl['@string.delimiter'] = { fg = v.Colors.String } -- extra highlight

    return hl
end

return { Theme = Theme }
