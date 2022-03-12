# edited for goormIDE
os: windows
and app.name: Visual Studio Code
os: windows
and app.exe: Code.exe


os: windows
and app.name: Microsoft OneNote
os: windows
and app.exe: ONENOTE.EXE

-

# commands (with snake case)
stamp {user.sql_command_dict} [<user.text>]:
    text = user.formatted_text(text or "", "SNAKE_CASE")
    insert("{sql_command_dict} {text}")
    
stop {user.sql_command_nodict}:
    insert("{sql_command_nodict} ")

# sunk {user.sql_functions}:
#     insert("{sql_functions}()")
#     key("left")
sunk {user.sql_functions} [<user.text>]:
    text = user.formatted_text(text or "", "SNAKE_CASE")
    insert("{sql_functions}({text})")
    key("left")


# ------------------------------ SQL commands ------------------------------
# My SQL specific commands
slammy: key("end ; ctrl-s ctrl-enter enter")
run script: key("ctrl-shift-enter")

# block comments and individual comments
switch comment: key("ctrl-/")

# Basic Sql Commands
inner join:
    insert("INNER JOIN  ON ")
    key(left)
    key(left)
    key(left)
    key(left)
dot i d: ".id"
dot sql: ".sql"

show databases: insert("SHOW DATABASES")
show tables: insert("SHOW TABLES")
select database: insert("SELECT DATABASE()")

