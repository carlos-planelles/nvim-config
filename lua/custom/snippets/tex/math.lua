local ls = require 'luasnip'
-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local rep = require('luasnip.extras').rep
local fmta = require('luasnip.extras.fmt').fmta

local tex = {}
tex.in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
  return not tex.in_mathzone()
end

return {
  -- Math mode
  s({
    trig = 'mk',
    condition = tex.in_text,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('$<>$<>', { i(1), i(2) })),

  s(
    {
      trig = '$$',
      snippetType = 'autosnippet',
    },
    fmta(
      [[
       \[
         <>
       \]
       <>
      ]],
      { i(1), i(2) }
    )
  ),

  s(
    {
      trig = 'beg',
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{<>}
         <>
       \end{<>}
       <>
      ]],
      { i(1), i(2), rep(1), i(3) }
    )
  ),

  -- Dashes

  s({
    trig = '--',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '–',
  }),

  s({
    trig = '–-',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '—',
  }),

  s({
    trig = '—-',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '---',
  }),

  -- Greek letters

  s({
    trig = '@a',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\alpha',
  }),

  s({
    trig = '@A',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\alpha',
  }),

  s({
    trig = '@b',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\beta',
  }),

  s({
    trig = '@B',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\beta',
  }),

  s({
    trig = '@c',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\chi',
  }),

  s({
    trig = '@C',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\chi',
  }),

  s({
    trig = '@g',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\gamma',
  }),

  s({
    trig = '@G',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Gamma',
  }),

  s({
    trig = '@d',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\delta',
  }),

  s({
    trig = '@D',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Delta',
  }),

  s({
    trig = '@e',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\varepsilon',
  }),

  s({
    trig = 'e\\psi lon',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\varepsilon',
  }),

  s({
    trig = '@E',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\epsilon',
  }),

  s({
    trig = ':e',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\varepsilon',
  }),

  s({
    trig = ':E',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\varepsilon',
  }),

  s({
    trig = '@z',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\zeta',
  }),

  s({
    trig = '@Z',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\zeta',
  }),

  s({
    trig = '@t',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\theta',
  }),

  s({
    trig = '@T',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Theta',
  }),

  s({
    trig = '@k',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\kappa',
  }),

  s({
    trig = '@K',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\kappa',
  }),

  s({
    trig = '@l',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\lambda',
  }),

  s({
    trig = '@L',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Lambda',
  }),

  s({
    trig = '@m',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mu',
  }),

  s({
    trig = '@M',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mu',
  }),

  s({
    trig = '@r',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\rho',
  }),

  s({
    trig = '@R',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\rho',
  }),

  s({
    trig = '@s',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\sigma',
  }),

  s({
    trig = '@S',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Sigma',
  }),

  s({
    trig = 'ome',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\omega',
  }),

  s({
    trig = '@o',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\omega',
  }),

  s({
    trig = '@O',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\Omega',
  }),

  s({
    trig = 'pi',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\pi',
  }),

  -- Insert space after greek letters and symbols, etc

  s({
    trig = 'forall',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\forall',
  }),

  s({
    trig = 'ii',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '_{i}',
  }),

  s({
    trig = 'jj',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '_{j}',
  }),

  s({
    trig = 'nn',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '_{n}',
  }),

  s({
    trig = 'mm',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '_{m}',
  }),

  s({
    trig = '(%a)(%d+) ',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '_{',
    f(function(_, snip)
      return snip.captures[2]
    end),
    t '}',
  }),

  s({
    trig = '(\\%a+{%a})(%d)',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '_{',
    f(function(_, snip)
      return snip.captures[2]
    end),
    t '}',
  }),

  s({
    trig = '(\\%w+)hat',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\hat{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(\\%w+)vec',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\vec{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(\\%w+)bar',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\overline{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(\\%w+)tilde',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\tilde{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(%a)hat',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hat{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(%a)vec',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\vec{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(%a)bar',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\overline{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  s({
    trig = '(%a)tilde',
    condition = tex.in_mathzone,
    regTrig = true,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\tilde{',
    f(function(_, snip)
      return snip.captures[1]
    end),
    t '}',
  }),

  -- Operations

  s({
    trig = 'te',
    condition = tex.in_mathzone,
    wordTrig = false,
  }, fmta('\\text{<>}<>', { i(1), i(2) })),

  s({
    trig = 'bf',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathbf{<>}<>', { i(1), i(2) })),

  s({
    trig = 'sr',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{2}',
  }),

  s({
    trig = 'cb',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{3}',
  }),

  s({
    trig = 'rd',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('^{<>}<>', { i(1), i(2) })),

  s({
    trig = '_',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('_{<>}<>', { i(1), i(2) })),

  s({
    trig = '^',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('^{<>}<>', { i(1), i(2) })),

  s({
    trig = 'sts',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('_\\text{<>}', { i(1) })),

  s({
    trig = 'sq',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\sqrt{ <> }<>', { i(1), i(2) })),

  s(
    {
      trig = '{(.+)}/',
      condition = tex.in_mathzone,
      regTrig = true,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta('\\frac{<>}{<>}<>', { f(function(_, snip)
      return snip.captures[1]
    end), i(1), i(2) })
  ),

  s({
    trig = '//',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\frac{<>}{<>}<>', { i(1), i(2), i(3) })),

  s({
    trig = 'ee',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('e^{ <> }<>', { i(1), i(2) })),

  s({
    trig = 'expect',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathbb{E}[<>]<>', { i(1), i(2) })),

  s({
    trig = 'rm',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathrm{<>}<>', { i(1), i(2) })),

  s({
    trig = 'conj',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{*}',
  }),

  s({
    trig = 'bar',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\overline{<>}', { i(1) })),

  s({
    trig = 'hat',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\hat{<>}', { i(1) })),

  s({
    trig = 'vec',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\vec{<>}', { i(1) })),

  s({
    trig = 'tilde',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\tilde{<>}', { i(1) })),

  s({
    trig = 'cdot',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\cdot',
  }),

  s({
    trig = 'ddot',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\ddots',
  }),

  s({
    trig = 'vdot',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\vdots',
  }),

  s({
    trig = 'trace',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathrm{Tr}(<>) <>', { i(1), i(2) })),

  s({
    trig = 'rank',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathrm{rank}(<>) <>', { i(1), i(2) })),

  s({
    trig = 'trans',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{\\top}',
  }),

  s({
    trig = 'max',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\max_{<>} <>', { i(1), i(2) })),

  s({
    trig = 'min',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\min_{<>} <>', { i(1), i(2) })),

  s({
    trig = 'under',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\underbrace{ <> }_{ <> }', { i(1), i(2) })),

  s({
    trig = 'eval',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left.<>\\right|_{ <> }^{ <> } <>', { i(1), i(2), i(3), i(4) })),

  s({
    trig = 'cancel',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\cancel{ <> } <>', { i(1), i(2) })),

  s({
    trig = 'cancelto',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\cancelto{ <> }{ <> }', { i(2), i(1) })),

  -- Symbols

  s({
    trig = 'ooo',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\infty',
  }),

  s({
    trig = 'sum',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\sum',
  }),

  s({
    trig = '\\summ',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    desc = 'Articulated sum',
    priority = 2000,
    wordTrig = false,
  }, fmta('\\sum_{<>=<>}^{<>} <>', { i(1, 'i'), i(2, '1'), i(3, 'n'), i(4) })),

  s({
    trig = 'prod',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\prod',
  }),

  s({
    trig = 'lim',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\lim_{ <> \\to <> } <>', { i(1, 'n'), i(2, '\\infty'), i(3) })),

  s({
    trig = 'pm',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\pm',
  }),

  s({
    trig = '...',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\dots',
  }),

  s({
    trig = '->',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\to',
  }),

  s({
    trig = '<-',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\leftarrow',
  }),

  s({
    trig = '\\leftarrow >',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\leftrightarrow',
  }),

  s({
    trig = '!>',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mapsto',
  }),

  s({
    trig = 'invs',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{-1}',
  }),

  s({
    trig = '\\\\\\',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\setminus',
  }),

  s({
    trig = '||',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mid',
  }),

  s({
    trig = 'and',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\cap',
  }),

  s({
    trig = 'orr',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\cup',
  }),

  s({
    trig = 'inn',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
    priority = 2000,
  }, {
    t '\\in',
  }),

  s({
    trig = '\\subset eq',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\subseteq',
  }),

  s({
    trig = 'set',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\{ <> \\}<>', { i(1), i(2) })),

  s({
    trig = '=>',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\implies',
  }),

  s({
    trig = '=<',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\impliedby',
  }),

  s({
    trig = 'iff',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\iff',
  }),

  s({
    trig = 'e\\xi sts',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, {
    t '\\exists',
  }),

  s({
    trig = '===',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\equiv',
  }),

  s({
    trig = 'Sq',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\square',
  }),

  s({
    trig = '!=',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\neq',
  }),

  s({
    trig = '>=',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\geq',
  }),

  s({
    trig = '-<',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\prec',
  }),

  s({
    trig = '>-',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\succ',
  }),

  s({
    trig = '\\prec=',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\preceq',
  }),

  s({
    trig = '\\succ=',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\succeq',
  }),

  s({
    trig = '<=',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\leq',
  }),

  s({
    trig = '>>',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\gg',
  }),

  s({
    trig = '<<',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\ll',
  }),

  s({
    trig = '~~',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\sim',
  }),

  s({
    trig = '\\sim ~',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\approx',
  }),

  s({
    trig = 'prop',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\propto',
  }),

  s({
    trig = 'nabl',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\nabla',
  }),

  s({
    trig = 'xx',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\times',
  }),

  s({
    trig = '**',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\cdot',
  }),

  s({
    trig = 'pal',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\parallel',
  }),

  s({
    trig = 'xnn',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'x_{n}',
  }),

  s({
    trig = 'xii',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'x_{i}',
  }),

  s({
    trig = 'xjj',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'x_{j}',
  }),

  s({
    trig = 'xp1',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'x_{n+1}',
  }),

  s({
    trig = 'ynn',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'y_{n}',
  }),

  s({
    trig = 'yii',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'y_{i}',
  }),

  s({
    trig = 'yjj',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'y_{j}',
  }),

  s({
    trig = 'mcal',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\mathcal{<>}<>', { i(1), i(2) })),

  s({
    trig = 'ell',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\ell',
  }),

  s({
    trig = 'lll',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\ell',
  }),

  s({
    trig = 'LL',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathcal{L}',
  }),

  s({
    trig = 'HH',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathcal{H}',
  }),

  s({
    trig = 'CC',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbb{C}',
  }),

  s({
    trig = 'RR',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbb{R}',
  }),

  s({
    trig = 'ZZ',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbb{Z}',
  }),

  s({
    trig = 'NN',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbb{N}',
  }),

  s({
    trig = 'II',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbb{1}',
  }),

  s({
    trig = '\\mathbb{1}I',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hat{\\mathbb{1}}',
  }),

  s({
    trig = 'AA',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathcal{A}',
  }),

  s({
    trig = 'BB',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbf{B}',
  }),

  s({
    trig = 'EE',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbf{E}',
  }),

  s({
    trig = 'FF',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathcal{F}',
  }),

  -- Unit vectors

  s({
    trig = ':i',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbf{i}',
  }),

  s({
    trig = ':j',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbf{j}',
  }),

  s({
    trig = ':k',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\mathbf{k}',
  }),

  s({
    trig = ':x',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hat{\\mathbf{x}}',
  }),

  s({
    trig = ':y',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hat{\\mathbf{y}}',
  }),

  s({
    trig = ':z',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hat{\\mathbf{z}}',
  }),

  -- Derivatives

  s({
    trig = 'par',
    condition = tex.in_mathzone,
    wordTrig = false,
  }, fmta('\\frac{ \\partial <> }{ \\partial <> } <>', { i(1, 'y'), i(2, 'x'), i(3) })),

  s({
    trig = 'pa2',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\frac{ \\partial^{2} <> }{ \\partial <>^{2} } <>', { i(1, 'y'), i(2, 'x'), i(3) })),

  s({
    trig = 'pa3',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\frac{ \\partial^{3} <> }{ \\partial <>^{3} } <>', { i(1, 'y'), i(2, 'x'), i(3) })),

  s({
    trig = 'ddt',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\frac{d}{dt} ',
  }),

  -- Integrals

  s({
    trig = 'oinf',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\int_{0}^{\\infty} <> \\, d<> <>', { i(1), i(2, 'x'), i(3) })),

  s({
    trig = 'infi',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\int_{-\\infty}^{\\infty} <> \\, d<> <>', { i(1), i(2, 'x'), i(3) })),

  s({
    trig = 'dint',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\int_{<>}^{<>} <> \\, d<> <>', { i(1, '0'), i(2, '\\infty'), i(3), i(4, 'x'), i(5) })),

  s({
    trig = 'oint',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\oint',
  }),

  s({
    trig = 'iiint',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\iiint',
  }),

  s({
    trig = 'iint',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\iint',
  }),

  s({
    trig = 'int',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\int <> \\, d<> <>', { i(1), i(2, 'x'), i(3) })),

  -- Physics

  s({
    trig = 'kbt',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t 'k_{B}T',
  }),

  -- Quantum mechanics

  s({
    trig = 'hba',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\hbar',
  }),

  s({
    trig = 'dag',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '^{\\dagger}',
  }),

  s({
    trig = 'bra',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\bra{<>} <>', { i(1), i(2) })),

  s({
    trig = 'ket',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\ket{<>} <>', { i(1), i(2) })),

  s({
    trig = 'brk',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\braket{ <> | <> } <>', { i(1), i(2), i(3) })),

  -- Chemistry

  s({
    trig = 'ce',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\ce{ <> }', { i(1) })),

  s({
    trig = 'iso',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('{}^{<>}_{<>}<>', { i(1, '4'), i(2, '2'), i(3, 'He') })),

  -- Environments

  s(
    {
      trig = '\\pmat',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{pmatrix}
         <>
       \end{pmatrix}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'bmat',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{bmatrix}
         <>
       \end{bmatrix}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'Bmat',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{Bmatrix}
         <>
       \end{Bmatrix}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'vmat',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{vmatrix}
         <>
       \end{vmatrix}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'Vmat',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{Vmatrix}
         <>
       \end{Vmatrix}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'case',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{cases}
         <>
       \end{cases}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'align',
      condition = tex.in_text,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{align}
         <>
       \end{align}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'array',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
       \begin{array}
         <>
       \end{array}
      ]],
      { i(1) }
    )
  ),

  s(
    {
      trig = 'matrix',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      [[
        \begin{matrix}
          <>
        \end{matrix}
      ]],
      { i(1) }
    )
  ),

  -- Brackets

  s({
    trig = 'lr(',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left( <> \\right) <>', { i(1), i(2) })),

  s({
    trig = 'lr|',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left| <> \\right| <>', { i(1), i(2) })),

  s({
    trig = 'lr{',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left\\{ <> \\right\\} <>', { i(1), i(2) })),

  s({
    trig = 'lr[',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left[ <> \\right] <>', { i(1), i(2) })),

  s({
    trig = 'lra',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\left<< <> \\right>> <>', { i(1), i(2) })),

  s({
    trig = 'avg',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('\\langle <> \\rangle <>', { i(1), i(2) })),

  s({
    trig = '(',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('(<>)<>', { i(1), i(2) })),

  s({
    trig = '{',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('{<>}<>', { i(1), i(2) })),

  s({
    trig = '[',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('[<>]<>', { i(1), i(2) })),

  s({
    trig = 'mod',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, fmta('|<>|<>', { i(1), i(2) })),

  s({
    trig = 'Norm',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, fmta('\\left\\|<>\\right\\|<>', { i(1), i(2) })),

  s({
    trig = 'norm',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    priority = 2000,
    wordTrig = false,
  }, fmta('\\|<>\\|<>', { i(1), i(2) })),

  -- Misc

  s(
    {
      trig = 'tayl',
      condition = tex.in_mathzone,
      snippetType = 'autosnippet',
      wordTrig = false,
    },
    fmta(
      "<>(<> + <>) = <>(<>) + <>'(<>)<> + <>''(<>) \\frac{<>^{2}}{2!} + \\dots<>",
      { i(1, 'f'), i(2, 'x'), i(3, 'h'), rep(1), rep(2), rep(1), rep(2), rep(3), rep(1), rep(2), rep(3), i(4) }
    )
  ),

  s({
    trig = 'qq',
    condition = tex.in_mathzone,
    snippetType = 'autosnippet',
    wordTrig = false,
  }, {
    t '\\qquad',
  }),
}
