app.name: Visual Studio Code
os: windows
app.exe: Code.exe
app.name: RStudio
app.exe: rstudio.exe
-

piper: 
    key(space)
    "%>%"
    key(space)

# from the magittr package.
tea piper:
    key(space)
    "%T>%"
    key(space)
# from the magittr package.
dollar piper:
    key(space)
    "%$%"
    key(space)
# from the magittr package.
replace piper:
    key(space)
    "%<>%"
    key(space)


matrix multiply: 
    key(space)
    insert("%*%")
    key(space)
# outer product of two vectors
outer multiply: 
    key(space)
    insert("%o%")
    key(space)

# comment partition line
partition: 
    key(#)
    key(-:79)
    key(enter) 

tidy verse: insert("tidyverse")

state if else: 
    insert("ifelse()")
    key(left)

state NA:
    insert("NA")

# tidyverse link commands
add that:
    key(end space)
    "+"
    key(enter)

# R specific commands
stick:
    key(end space)
    "%>%"
    key(enter)

argue {user.code_parameter_name}: user.code_insert_named_argument(code_parameter_name)

