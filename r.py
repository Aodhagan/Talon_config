from talon import Context, Module, actions, clip, imgui, settings, ui

ctx = Context()

ctx.matches = r"""
mode: user.r
mode: user.auto_lang
and code.language: r
"""

ctx.lists["user.code_functions"] = {
    # base R
    "as character": "as.character",
    "as data frame": "as.data.frame",
    "as date": "as.Date",
    "as double": "as.double",
    "as factor": "as.factor",
    "as integer": "as.integer",
    "as numeric": "as.numeric",
    "base read RDS": "readRDS",
    "base save RDS": "saveRDS",
    "cable": "kable",
    "correlation": "cor",
    "count": "count",
    "covariance": "cov",
    "describe": "describe",
    "data frame": "data.frame",
    "eigen": "eigen",
    "ex table": "xtable",
    "get working directory": "getwd",
    "head": "head",
    "hist": "hist",
    "if else": "ifelse",
    "install packages": "install.packages",
    "is NA": "is.na",
    "is not NA": "!is.na",
    "length": "length",
    "library": "library",
    "list files": "list.files",
    "list": "list",
    "lm": "lm",
    "log": "log",
    "make directory": "dir.create",
    "margins": "margins",
    "max": "max",
    "mean": "mean",
    "median": "median",
    "min": "min",
    "names": "names",
    "paste": "paste0",
    "print": "print",
    "quantile": "quantile",
    "reorder": "reorder",
    "rep": "rep",
    "scale": "scale",
    "sequence along": "seq_along",
    "sequence length": "seq_len",
    "sequence": "seq",
    "set working directory": "setwd",
    "sort": "sort",
    "subset": "subset",
    "sum": "sum",
    "summary": "summary",
    "tail": "tail",
    "tidy": "tidy",
    "trim white space": "trimws",
    "type": "typeof",
    "unique": "unique",
    "vector": "c",
    "vee table": "vtable",
    "view": "View",

    # dplyr
    "anti join": "anti_join",
    "arrange": "arrange",
    "as tibble": "as_tibble",
    "bind rows": "bind_rows",
    "case when": "case_when",
    "distinct": "distinct",
    "everything": "everything",
    "filter": "filter",
    "full join": "full_join",
    "glimpse": "glimpse",
    "group by": "group_by",
    "inner join": "inner_join",
    "left join": "left_join",
    "mutate": "mutate",
    "pull": "pull",
    "rename all": "rename_all",
    "rename": "rename",
    "right join": "right_join",
    "select all": "select_all",
    "select": "select",
    "semi join": "semi_join",
    "starts with": "starts_with",
    "summarise": "summarise",
    "tibble": "tibble",
    "transmute": "transmute",
    "ungroup": "ungroup",

    # forcats
    "factor reorder": "fct_reorder",
    "factor lump": "fct_lump",

    # ggplot2
    "coord cartesian": "coor_cartesian",
    "cord flip": "coord_flip",
    "element text": "element_text",
    "element blank": "element_blank",
    "facet grid": "facet_grid",
    "facet wrap": "facet_wrap",
    "geom A B line": "geom_abline",
    "geom area": "geom_area",
    "geom bar": "geom_bar",
    "geom boxplot": "geom_boxplot",
    "geom col": "geom_col",
    "geom count": "geom_count",
    "geom histogram": "geom_histogram",
    "geom H line": "geom_hline",
    "geom jitter": "geom_jitter",
    "geom line": "geom_line",
    "geom point": "geom_point",
    "geom pointrange": "geom_pointrange",
    "geom polygon": "geom_polygon",
    "geom ribbon": "geom_ribbon",
    "geom segment": "geom_segment",
    "geom smooth": "geom_smooth",
    "geom text": "geom_text",
    "geom vertical line": "geom_vline",
    "geom violin": "geom_violin",
    "labs": "labs",
    "scale colour manual": "scale_colour_manual",
    "scale fill manual": "scale_fill_manual",
    "scale fill viridis": "scale_fill_viridis_c",
    "scale colour viridis": "scale_colour_viridis_c",
    "theme set": "theme_set",
    "theme void": "theme_void",
    "stat smooth": "stat_smooth",
    # purrr
    "map character": "map_chr",
    "map data frame": "map_dfr",
    "map double": "map_dbl",
    "map": "map",
    "P map": "pmap",
    # stringr
    "string contains": "str_detect",
    "string detect": "str_detect",
    "string replace all": "str_replace_all",
    "string replace": "str_replace",
    # tidyr
    "drop NA": "drop_na",
    "gather": "gather",
    "nest": "nest",
    "pivot longer": "pivot_longer",
    "pivot wider": "pivot_wider",
    "spread": "spread",
    "un nest": "unnest",
    # readr, readxl, and other non-base R reading/writing
    "read E views": "readEViews",
    "read CSV": "read_csv",
    "read RDS": "read_rds",
    "read excel": "read_xlsx",
    "write CSV": "write_csv",
    "write RDS": "write_rds",
    # Shiny
    "shine ui": "shinyUI",
    "title panel": "titlePanel",
    "main panel": "mainPanel",
    "tab panel": "tabPanel",
    "navigation list panel": "navlistPanel",
    "conditional panel": "conditionalPanel",
    "input panel": "inputPanel",
    "ui output": "uiOutput",
    "text output": "textOutput",
    "table output": "tableOutput",
    "data table output": "dataTableOutput",
    "select size input": "selectizeInput",
    "action button": "actionButton",
    "download button": "downloadButton",
    "render ui": "renderUI",
    "observe event": "observeEvent",
    # my functions
    "TS display": "tsdisplay",
    "ab line": "abline",
    "absolute": "abs",
    "aesthetic": "aes",
    "aggregate": "aggregate",
    "apply": "apply",
    "are bind": "rbind",
    "arima simulate": "arima.sim",
    "coefficients": "coefficients",
    "co F": "coef",
    "col means": "colMeans",
    "col names": "colnames",
    "descend": "desc",
    "dimension": "dim",
    "fitted": "fitted",
    "gee gee plot": "ggplot",
    "gust plot": "ggplot",
    "legend": "legend",
    "levels": "levels",
    "lines": "lines",
    "matrix": "matrix",
    "near col": "ncol",
    "near row": "nrow",
    "order": "order",
    "par": "par",
    "plex label": "xlab",
    "plot": "plot",
    "points": "points",
    "predict": "predict",
    "read table": "read.table",
    "residuals": "residuals",
    "see bind": "cbind",
    "slice": "slice",
    "square root": "sqrt",
    "structure": "str",
    "sweep": "sweep",
    "table": "table",
    "write table": "write.table",
    "yank label": "ylab",
    "expo": "exp",
    "glm fit": "glm.fit",
    "glm": "glm",
    "round": "round",
    "sample": "sample",
    "matplot": "matplot",
    "principal component": "prcomp",
    "come some": "cumsum",
    "load": "load",
    "range": "range",
    "floor": "floor",
    "set diff": "setdiff",
    "barplot": "barplot",
    "prop table": "prop.table",
    "boxplot": "boxplot",
    "que que norm": "qqnorm",
    "anova": "anova",
    "which": "which",
}

ctx.lists["user.code_libraries"] = {
    "bayes plot": "bayesplot",
    "BRMS": "brms",
    "cable": "kable",
    "car": "car",
    "D plier": "dplyr",
    "dev tools": "devtools",
    "future": "future",
    "furr": "furrr",
    "gap minder": "gapminder",
    "gee animate": "gganimate",
    "gee highlight": "gghighlight",
    "gee map": "ggmap",
    "gee repel": "ggrepel",
    "grid extra": "gridExtra",
    "gee gee plot": "ggplot2",
    "GLMM TMB": "glmmTMB",
    "here": "here",
    "knitter": "knitr",
    "LME four": "lme4",
    "LM test": "lmtest",
    "lubridate": "lubridate",
    "margins": "margins",
    "inla": "INLA",
    "NLME": "nlme",
    "psych": "psych",
    "purr": "purrr",
    "R markdown": "rmarkdown",
    "R stan": "rstan",
    "R stan arm": "rstanarm",
    "R color brewer": "RColorBrewer",
    "read R": "readr",
    "stargazer": "stargazer",
    "tidy verse": "tidyverse",
    "tidier": "tidyr",
    "tidy bayes": "tidybayes",
    "TMB": "TMB",
    "vee table": "vtable",
    "viridis": "viridis",
    "viridis light": "viridisLite",
    "shiny alert": "shinyalert",
}

# parameter names
ctx.lists["user.code_parameter_name"] = {
    "H just": "hjust",
    "M F row": "mfrow",
    "NA remove": "na.rm",
    "aesthetic": "aes",
    "alpha": "alpha",
    "breaks": "breaks",
    "call": "col",
    "colour": "colour",
    "control": "control",
    "data": "data",
    "family": "family",
    "fill": "fill",
    "header": "header",
    "inset": "inset",
    "keep": ".keep",
    "label": "label",
    "labels": "labels",
    "legend": "legend",
    "line type": "linetype",
    "log": "log",
    "main": "main",
    "mapping": "mapping",
    "method": "method",
    "model": "model",
    "near row": "nrow",
    "order": "order",
    "path": "path",
    "plex lab": "xlab",
    "plex lim": "xlim",
    "plex": "x",
    "position": "position",
    "scales": "scales",
    "short line type": "lty",
    "show legend": "show.legend",
    "size": "size",
    "sort": "sort",
    "title": "title",
    "type": "type",
    "vee just": "vjust",
    "weights": "weights",
    "width": "width",
    "with ties": "with_ties",
    "yank intercept": "yintercept",
    "yank lab": "ylab",
    "yank lim": "ylim",
    "yank max": "ymax",
    "yank min": "ymin",
    "yank": "y",
    "replace": "replace",

}


@ctx.action_class('user')
class UserActions:
    def code_operator_assignment():               actions.auto_insert(' <- ')
    def code_operator_subtraction():              actions.auto_insert(' - ')
    def code_operator_addition():                 actions.auto_insert(' + ')
    def code_operator_multiplication():           actions.auto_insert(' * ')
    def code_operator_exponent():                 actions.auto_insert(' ** ')
    def code_operator_division():                 actions.auto_insert(' / ')
    def code_operator_modulo():                   actions.auto_insert(' %% ')
    def code_operator_equal():                    actions.auto_insert(' == ')
    def code_operator_not_equal():                actions.auto_insert(' != ')
    def code_operator_greater_than():             actions.auto_insert(' > ')
    def code_operator_greater_than_or_equal_to(): actions.auto_insert(' >= ')
    def code_operator_less_than():                actions.auto_insert(' < ')
    def code_operator_less_than_or_equal_to():    actions.auto_insert(' <= ')
    def code_operator_and():                      actions.auto_insert(' & ')
    def code_operator_or():                       actions.auto_insert(' | ')
    def code_operator_bitwise_and():              actions.auto_insert(' & ')
    def code_insert_null():                              actions.auto_insert('NULL')

    def code_state_if():
        actions.insert('if () {}')
        actions.key('left enter up end left:3')

    def code_state_else_if():
        actions.insert(' else if () {}')
        actions.key('left enter up end left:3')

    def code_state_else():
        actions.insert(' else {}')
        actions.key('left enter')

    def code_state_for():
        actions.insert('for ( in ) {}')
        actions.key('left enter up end left:7')

    def code_state_while():
        actions.insert('while () {}')
        actions.key('left enter up end left:3')

    def code_import():
        actions.insert('library()')
        actions.key('left')

    def code_comment_line_prefix(): actions.auto_insert('#')

    def code_state_return():
        actions.insert('return()')
        actions.key('left')

    def code_break(): actions.auto_insert('break')
    def code_next():  actions.auto_insert('next')
    def code_insert_true():  actions.auto_insert('TRUE')
    def code_insert_false(): actions.auto_insert('FALSE')

    def code_insert_function(text: str, selection: str):
        if selection:
            text = text + "({})".format(selection)
        else:
            text = text + "()"
        actions.user.paste(text)
        actions.edit.left()

    def code_private_function(text: str):
        result = "{} <- function () {{\n\n}}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.paste(result)
        actions.edit.up()
        actions.edit.up()
        actions.edit.line_end()
        actions.edit.left()
        actions.edit.left()
        actions.edit.left()

    def code_insert_library(text: str, selection: str):
        actions.insert("library()")
        actions.edit.left()
        actions.clip.set_text(text + "{}".format(selection))
        actions.edit.paste()

    def code_insert_named_argument(parameter_name: str):
        actions.insert(f"{parameter_name} = ")
