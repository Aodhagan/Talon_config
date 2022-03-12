#custom vscode commands go here
app: vscode
os: windows
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.snippets
tag(): user.splits
tag(): user.tabs
window reload: user.vscode("workbench.action.reloadWindow")
window close: user.vscode("workbench.action.closeWindow")
#multiple_cursor.py support end

please [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")
    
# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
bar switch: user.vscode("workbench.action.toggleSidebarVisibility")

symbol hunt [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    sleep(50ms)
    insert(text or "")
    
# Panels
panel control: user.vscode("workbench.panel.repl.view.focus")
panel output: user.vscode("workbench.panel.output.focus")
panel problems: user.vscode("workbench.panel.markers.view.focus")
panel switch: user.vscode("workbench.action.togglePanel")
panel terminal: user.vscode("workbench.action.terminal.focus")
focus editor: user.vscode("workbench.action.focusActiveEditorGroup")

# Settings
show settings: user.vscode("workbench.action.openGlobalSettings")
show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
show snippets: user.vscode("workbench.action.openSnippets")

# Display
centered switch: user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch: user.vscode("workbench.action.toggleFullScreen")
theme switch: user.vscode("workbench.action.selectTheme")
wrap switch: user.vscode("editor.action.toggleWordWrap")
zen switch: user.vscode("workbench.action.toggleZenMode")

# File Commands
file hunt [<user.text>]:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert(text or "")
file copy path: user.vscode("copyFilePath")
file create sibling: user.vscode_and_wait("explorer.newFile")
file create: user.vscode("workbench.action.files.newUntitledFile")
file rename:
    user.vscode("fileutils.renameFile")
    sleep(150ms)
file move:
    user.vscode("fileutils.moveFile")
    sleep(150ms)
file open folder: user.vscode("revealFileInOS")
file reveal: user.vscode("workbench.files.action.showActiveFileInExplorer")
save ugly: user.vscode("workbench.action.files.saveWithoutFormatting")

# Language Features
suggest show: user.vscode("editor.action.triggerSuggest")
hint show: user.vscode("editor.action.triggerParameterHints")
definition show: user.vscode("editor.action.revealDefinition")
definition peek: user.vscode("editor.action.peekDefinition")
definition side: user.vscode("editor.action.revealDefinitionAside")
references show: user.vscode("editor.action.goToReferences")
references find: user.vscode("references-view.find")
format that: user.vscode("editor.action.formatDocument")
format selection: user.vscode("editor.action.formatSelection")
imports fix: user.vscode("editor.action.organizeImports")
problem next: user.vscode("editor.action.marker.nextInFiles")
problem last: user.vscode("editor.action.marker.prevInFiles")
problem fix: user.vscode("problems.action.showQuickFixes")
rename that: user.vscode("editor.action.rename")
refactor that: user.vscode("editor.action.refactor")
whitespace trim: user.vscode("editor.action.trimTrailingWhitespace")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename: user.vscode("editor.action.rename")
refactor this: user.vscode("editor.action.refactor")

#code navigation
(go declaration | follow): user.vscode("editor.action.revealDefinition")
go back: user.vscode("workbench.action.navigateBack")
go forward: user.vscode("workbench.action.navigateForward")
go implementation: user.vscode("editor.action.goToImplementation")
go type: user.vscode("editor.action.goToTypeDefinition")
go usage: user.vscode("references-view.find")
go recent [<user.text>]:
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(text or "")
    sleep(250ms)
    
# Bookmarks. Requires Bookmarks plugin
go marks: user.vscode("workbench.view.extension.bookmarks")
toggle mark: user.vscode("bookmarks.toggle")
go next mark: user.vscode("bookmarks.jumpToNext")
go last mark: user.vscode("bookmarks.jumpToPrevious")

# Folding
fold that: user.vscode("editor.fold")
unfold that: user.vscode("editor.unfold")
fold those: user.vscode("editor.foldAllMarkerRegions")
unfold those: user.vscode("editor.unfoldRecursively")
fold all: user.vscode("editor.foldAll")
unfold all: user.vscode("editor.unfoldAll")
fold comments: user.vscode("editor.foldAllBlockComments")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch: user.vscode("git.branchFrom")
git branch this: user.vscode("git.branch")
git checkout [<user.text>]:
    user.vscode("git.checkout")
    sleep(50ms)
    insert(text or "")
git commit [<user.text>]:
    user.vscode("git.commitStaged")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")
git commit undo: user.vscode("git.undoCommit")
git commit ammend: user.vscode("git.commitStagedAmend")
git diff: user.vscode("git.openChange")
git ignore: user.vscode("git.ignore")
git merge: user.vscode("git.merge")
git output: user.vscode("git.showOutput")
git pull: user.vscode("git.pullRebase")
git push: user.vscode("git.push")
git push focus: user.vscode("git.pushForce")
git rebase abort: user.vscode("git.rebaseAbort")
git reveal: user.vscode("git.revealInExplorer")
git revert: user.vscode("git.revertChange")
git stash: user.vscode("git.stash")
git stash pop: user.vscode("git.stashPop")
git status: user.vscode("workbench.scm.focus")
git stage: user.vscode("git.stage")
git stage all: user.vscode("git.stageAll")
git unstage: user.vscode("git.unstage")
git unstage all: user.vscode("git.unstageAll")
pull request: user.vscode("pr.create")
change next: key(alt-f5)
change last: key(shift-alt-f5)

#Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
step over: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug stopper: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")
debug console: user.vscode("workbench.debug.action.toggleRepl")

# Terminal
terminal external: user.vscode("workbench.action.terminal.openNativeConsole")
terminal new: user.vscode("workbench.action.terminal.new")
terminal next: user.vscode("workbench.action.terminal.focusNext")
terminal last: user.vscode("workbench.action.terminal.focusPrevious")
terminal split: user.vscode("workbench.action.terminal.split")
terminal zoom: user.vscode("workbench.action.toggleMaximizedPanel")
terminal trash: user.vscode("workbench.action.terminal.kill")
terminal toggle: user.vscode_and_wait("workbench.action.terminal.toggleTerminal")
terminal scroll up: user.vscode("workbench.action.terminal.scrollUp")
terminal scroll down: user.vscode("workbench.action.terminal.scrollDown")
terminal <number_small>: user.vscode_terminal(number_small)

#TODO: should this be added to linecommands?
copy line down: user.vscode("editor.action.copyLinesDownAction")
copy line up: user.vscode("editor.action.copyLinesUpAction")

#Expand/Shrink AST Selection
select less: user.vscode("editor.action.smartSelect.shrink")
select (more|this): user.vscode("editor.action.smartSelect.expand")

minimap: user.vscode("editor.action.toggleMinimap")
maximize: user.vscode("workbench.action.minimizeOtherEditors")
restore: user.vscode("workbench.action.evenEditorWidths")

replace here:
    user.replace("")
    key(cmd-alt-l)
    
hover show: user.vscode("editor.action.showHover")

join lines: user.vscode("editor.action.joinLines")

full screen: user.vscode("workbench.action.toggleFullScreen")

curse undo: user.vscode("cursorUndo")

select word: user.vscode("editor.action.addSelectionToNextFindMatch")
skip word: user.vscode("editor.action.moveSelectionToNextFindMatch")

# jupyter notebooks
# variable view
focus variables: user.vscode("jupyterViewVariables.focus")

# restart kernel
restart kernel: user.vscode("jupyter.restartkernel")

# edit individual cells
cell copy: user.vscode("notebook.cell.copy")
cell cut: user.vscode("notebook.cell.cut")
cell delete: user.vscode("notebook.cell.delete")
cell edit: user.vscode("notebook.cell.edit")
cell paste: user.vscode("notebook.cell.paste")
# cell navigation
cell first: user.vscode("notebook.focusTop")
cell previous: user.vscode("notebook.focusPreviousEditor")
cell next: user.vscode("notebook.focusNextEditor")
cell last: user.vscode("notebook.focusBottom")
# cell execution
cell run above: user.vscode("notebook.cell.executeCellsAbove")
cell run: user.vscode("notebook.cell.executeAndFocusContainer")
cell run below: user.vscode("notebook.cell.executeAndInsertBelow")
cell run next: 
    user.vscode("notebook.cell.executeAndSelectBelow")
    key("enter")
cell run all: user.vscode("notebook.execute")
# cell duplication
cell copy above: user.vscode("notebook.cell.copyUp")
cell copy: user.vscode("notebook.cell.copy")
cell copy below: user.vscode("notebook.cell.copyDown")
# cell conversion
cell change mark: 
    user.vscode("notebook.cell.changeToMarkdown")
    key("enter")
cell change code: 
    user.vscode("notebook.cell.changeToCode")
    key("enter")
# create new cells relative to current cell
cell mark above: user.vscode("notebook.cell.insertMarkdownCellAbove")
cell code above: user.vscode("notebook.cell.insertCodeCellAbove")
cell mark below: user.vscode("notebook.cell.insertMarkdownCellBelow")
cell code below: user.vscode("notebook.cell.insertCodeCellBelow")
# cell merging and splitting
cell join above: user.vscode("notebook.cell.joinAbove")
cell join below: user.vscode("notebook.cell.joinBelow")
cell split: user.vscode("notebook.cell.split")
# moving cells
cell move up: user.vscode("notebook.cell.moveUp")
cell move down:  user.vscode("notebook.cell.moveDown")
# cell view input/output
cell collapse input: user.vscode("notebook.cell.collapseCellInput")
cell collapse all inputs: user.vscode("notebook.cell.collapseAllCellInputs")
cell expand input: user.vscode("notebook.cell.expandCellInput")
cell expand all inputs: user.vscode("notebook.cell.expandAllCellInputs")
cell collapse output: user.vscode("notebook.cell.collapseCellOutput")
cell collapse all outputs: user.vscode("notebook.cell.collapseAllCellOutputs")
cell expand output: user.vscode("notebook.cell.expandCellOutput")
cell expand all outputs: user.vscode("notebook.cell.expandAllCellOutputs")

cell clear all output: user.vscode("notebook.cell.clearOutputs")
cell show line numbers: user.vscode("notebook.cell.toggleLineNumbers")

# running python code
code run: user.vscode("jupyter.execSelectionInteractive")



# Markdown - May create stand-alone markdown.talon file for both Python and R
# headings
first heading:                   insert("# ")
second heading:                   insert("## ")
third heading:                   insert("### ")
fourth heading:                   insert("#### ")

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

bold phrase [<user.text>]:
    "**{text}** "

italics phrase [<user.text>]:
    "*{text}* "

# Rmarkdown in vscode

# insert code chunk
blurb:                           key("ctrl-alt-i")
# assignment statement
stamp:                           key("alt--")

# running code/chunks
run that:                        key("ctrl-enter")
run all chunks:                         key("ctrl-alt-r")
run previous chunks:             key("ctrl-alt-p")
#run to end:                      key("ctrl-alt-e")
#run (function|funk):             key("ctrl-alt-f")
#run section:                     key("ctrl-alt-t")
run chunk:                       key("ctrl-shift-enter")
run next chunk:                  key("ctrl-alt-n")
#run all:                         key("ctrl-shift-s")
knit doc:                        key("ctrl-shift-k")
    