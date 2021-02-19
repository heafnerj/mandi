mandi provides commands for introductory physics. To install, open a command
line  and  type  the  following,  repeating 2-4 until there are no warnings:

  1. lualatex mandi.ins  (can also use latex)
  2. lualatex mandi.dtx  (lualatex is required)
  3. makeindex -s gind.ist -o mandi.ind mandi.idx
  4. makeindex -s gglo.ist -o mandi.gls mandi.glo

