app: RStudio
-

run that:                        key("ctrl-enter")
run doc:                         key("ctrl-alt-r")
run previous chunks:             key("ctrl-alt-shift-p")
#run to end:                      key("ctrl-alt-e")
#run (function|funk):             key("ctrl-alt-f")
#run section:                     key("ctrl-alt-t")
run chunk:                       key("ctrl-shift-enter")
run next chunk:                  key("ctrl-alt-n")
#run all:                         key("ctrl-shift-s")
knit doc:                        key("ctrl-shift-k")

# Moving around and formatting
jump back:                       key("ctrl-f9")
jump forward:                    key("ctrl-f10")
close all tabs:                  key("ctrl-shift-w")
indent lines:                    key("ctrl-i")
switch comment:                  key("ctrl-alt-c")
reformat comment:                key("ctrl-shift-/")
reformat R code:                 key("ctrl-shift-a")
line up: %in% key("alt-up")
line down:                       key("alt-down")
duplicate line up:               key("ctrl-alt-up")
duplicate line [down]:           key("ctrl-alt-down")
#select to paren:                 key("ctrl-shift-e")
select to matching paren:        key("ctrl-shift-alt-e")
jump to matching:                key("ctrl-p")
expand selection:                key("shift-alt-ctrl-up")
reduce selection:                key("shift-alt-ctrl-down")
add cursor up:                   key("ctrl-alt-up")
add cursor down:                 key("ctrl-alt-down")
move active cursor up:           key("ctrl-alt-shift-up")
move active cursor down:         key("ctrl-alt-shift-down")
delete line:                     key("ctrl-d")
#delete word left:                key("alt-backspace")
#delete word right:               key("alt-delete")
stamp:                           key("alt--")
#pipe that:                       key("ctrl-shift-m") # duplicate in r.talon
blurb name:                      key("ctrl-alt-i up end left space")
blurb:                           key("ctrl-alt-i")
blurb no results:               
    key("ctrl-alt-i up end left space")
    insert(", results=FALSE")
    key("down")
blurb no eval:               
    key("ctrl-alt-i up end left space")
    insert(", eval=FALSE")
    key("down")
clam:                            key("space ` r space ` left")
slam:                            key("space $ $ left")
skip:                            key("right space")
dub skip:                        key("right right space")
italic that:                
    text = edit.selected_text()
    user.paste('*{text}*')

bold that:                
    text = edit.selected_text()
    user.paste('**{text}**')

empty italics: 
    insert("**")
    key(left)

empty bold: 
    insert("****")
    key(left left)

    

# headings
first heading:                   insert("# ")
second heading:                   insert("## ")
third heading:                   insert("### ")
fourth heading:                   insert("#### ")
# Folding
fold that:                       key("ctrl-alt-l")
unfold that:                     key("ctrl-shift-alt-l")
fold all:                        key("ctrl-alt-o")
unfold all:                      key("ctrl-shift-alt-o")

# Find and replace
find and replace:                key("ctrl-f")
find next:                       key("ctrl-g")
find previous:                   key("ctrl-shift-g")
find with selection:             key("ctrl-e")
find in files:                   key("ctrl-shift-f")
run replace:                     key("ctrl-shift-j")
run spell check:                 key("f7")

# Navigation and panels
go to source:                    key("ctrl-1")
go to console:                   key("ctrl-2")
go to help:                      key("ctrl-3")
go to history:                   key("ctrl-4")
go to files:                     key("ctrl-5")
go to (plots|plot):              key("ctrl-6")
go to packages:                  key("ctrl-7")
go to environment:               key("ctrl-8")
go to git:                       key("ctrl-9")
go to build:                     key("ctrl-0")
go to terminal:                  key("alt-shift-t")
go to omni:                      key("ctrl-.")
go to line:                      key("ctrl-shift-alt-g")
go to section:                   key("ctrl-shift-alt-j")
go to tab:                       key("ctrl-shift-.")
go to previous tab:              key("ctrl-f11")
go to next tab:                  key("ctrl-f12")
go to first tab:                 key("ctrl-shift-f11")
go to last tab:                  key("ctrl-shift-f12")

zoom source:                     key("ctrl-shift-1")
(zoom|show) all:                 key("ctrl-shift-0")

help that:                       key("f1")
define that:                     key("f2")
previous plot:                   key("ctrl-alt-f11")
next plot:                       key("ctrl-alt-f12")

# devtools, package development, and session management
restart R session:               key("ctrl-shift-f10")
dev tools build:                 key("ctrl-shift-b")
dev tools load all:              key("ctrl-shift-l")
dev tools test:                  key("ctrl-shift-t")
dev tools check:                 key("ctrl-shift-e")
dev tools document:              key("ctrl-shift-d")

# Debugging
toggle breakpoint:               key("shift-f9")
debug next:                      key("f10")
debug step into (function|funk): key("shift-f4")
debug finish (function|funk):    key("shift-f6")
debug continue:                  key("shift-f5")
debug stop:                      key("shift-f8")

# Git/SVN
run git diff:                    key("ctrl-alt-d")
run git commit:                  key("ctrl-alt-m")

# Other shortcuts that could be enabled
# run line and stay:             key("alt-enter")
# run and echo all:              key("cmd-shift-enter")
# extract (function|funk):       key("cmd-alt-x")
# extract variable:              key("cmd-alt-v")
# new terminal:                  key("shift-alt-t")
# rename current terminal:       key("shift-alt-r")
# clear current terminal:        key("ctrl-shift-l")
# previous terminal:             key("ctrl-alt-f11")
# next terminal:                 key("ctrl-alt-f12")
# clear console:                 key("ctrl-l")
# popup history:                 key("cmd-up")
# change working directory:      key("ctrl-shift-h")
# new document:                  key("cmd-shift-n")
# new document (chrome only):    key("cmd-shift-alt-n")
# insert code section:           key("cmd-shift-r")
# scroll diff view:              key("ctrl-up/down")
# sync editor & pdf preview:     key("cmd-f8")
