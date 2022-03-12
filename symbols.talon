os: windows
-

question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(bracket | brack | left bracket): "{"
(rbrack | are bracket | right bracket): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
spamma: ", "
plus: "+"
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
quad:
    '""'
    key(left)
empty escaped quad:
    '\\"\\"'
    key(left)
    key(left)
empty pair:
    "''"
    key(left)
empty escaped pair:
    "\\'\\'"
    key(left)
    key(left)
empty angles:
	insert("<>")
	key(left)
empty ticks:
    "''"
    key(left)
empty escaped ticks:
    insert("\\'\\'")
    key(left)
    key(left)
round:
    insert("()")
    key(left)
empty square:
    insert("[]")
    key(left)
empty (bracket | braces):
    insert("{}")
    key(left)
empty percent:
    insert("%%")
    key(left)
empty dollar:
    insert("$$")
    key(left)
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(bracket | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(round | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
pair that:
    text = edit.selected_text()
    user.paste("'{text}'")
quad that:
    text = edit.selected_text()
    user.paste('"{text}"')
(ticks | back tick) that:
    text = edit.selected_text()
    user.paste('`{text}`')
