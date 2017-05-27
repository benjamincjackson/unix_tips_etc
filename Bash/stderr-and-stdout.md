### Directing stderr and/or stdout to file
See http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-3.html


Directing stdout to file:
`command > out`

Directing sterr to file:
`command 2> errOut`

Directing both to one file:
`command &> out`

Directing each to different files:
`command > out 2> errOut`

Note that `>` is the same as `1>`

You can redirect to `/dev/null` if you want everything to be silent:
`command &> /dev/null`
