# define some voice commands
spamma: insert(", ")
ramma: key("right , space")
spew: key("end , enter")
coalgap: insert(": ")
dub slap: key("end enter enter")
skip: key("right space")
void: key("space")

long equals:
    key("space")
    insert("=")
    key("space")

long tilde:
    key("space")
    insert("~")
    key("space")

long minus:
    key("space")
    insert("-")
    key("space")


# windows key
windows: key("super")

# parentheses with the insertion point placement after
circle: 
    insert("()")
    key("space")

paren phrase [<user.text>]: insert("({text}) ")
# activate hunt and peck for Vimium Windows 10 navigation (pause prior command).
^hunt: key(alt-;)
# activate hunt and peck for Vimium Windows 10 taskbar (pause prior command).
^hunt task: key(ctrl-;)

# send talon to sleep/wake
key(ctrl-alt-s): speech.toggle()


