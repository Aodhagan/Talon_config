from talon import ui, Module, Context, registry, actions, imgui, cron

mod = Module()
ctx = Context()
ctx.matches = r"""
"""

mod.list("sql_command_dict")
ctx.lists["user.sql_command_dict"] = {
    "and": "AND",
    "as": "AS",
    "ascend": "ASC",
    "ascending": "ASC",
    "auto increment": "AUTO_INCREMENT",
    "between": "BETWEEN",
    "case": "CASE",
    "columns": "COLUMNS",
    "create database": "CREATE DATABASE",
    "create table": "CREATE TABLE",
    "current timestamp": "CURRENT_TIMESTAMP",
    "date time": "DATETIME",
    "date": "DATE",
    "default": "DEFAULT",
    "delete from": "DELETE FROM",
    "descend": "DESC",
    "describe": "DESC",
    "distinct": "DISTINCT",
    "drop database": "DROP DATABASE",
    "drop table": "DROP TABLE",
    "else": "ELSE",
    "end": "END",
    "from": "FROM",
    "group by": "GROUP BY",
    "in": "IN",
    "insert into": "INSERT INTO",
    "insert": "INSERT",
    "interval": "INTERVAL",
    "into": "INTO",
    "like": "LIKE",
    "limit": "LIMIT",
    "not": "NOT",
    "null": "NULL",
    "or": "OR",
    "order by": "ORDER BY",
    "order by": "ORDER BY",
    "primary key": "PRIMARY KEY",
    "select": "SELECT",
    "set": "SET",
    "show warnings": "SHOW WARNINGS",
    "show": "SHOW",
    "source": "SOURCE",
    "source": "SOURCE",
    "star": "*",
    "then": "THEN",
    "time": "TIME",
    "timestamp": "TIMESTAMP",
    "update": "UPDATE",
    "use": "USE",
    "values": "VALUES",
    "when": "WHEN",
    "where": "WHERE",
    "references": "REFERENCES",
    "join": "JOIN",
    "on": "ON",
    "inner join": "INNER JOIN",
    "left join": "LEFT JOIN",
    "right join": "RIGHT JOIN",
    # -----------compound commands-----------------
    "insert into": "INSERT INTO",
    "select star from": "SELECT * FROM",
    "not like": "NOT LIKE",
    "not null": "NOT NULL",
    "is null": "IS NULL",
    "not between": "NOT BETWEEN",
    "not in": "NOT IN",
    "if exists": "IF EXISTS",
    "on delete cascade": "ON DELETE CASCADE",
}

mod.list("sql_command_nodict")
ctx.lists["user.sql_command_nodict"] = {
    "and": "AND",
    "as": "AS",
    "ascend": "ASC",
    "ascending": "ASC",
    "auto increment": "AUTO_INCREMENT",
    "between": "BETWEEN",
    "case": "CASE",
    "columns": "COLUMNS",
    "create database": "CREATE DATABASE",
    "create table": "CREATE TABLE",
    "current timestamp": "CURRENT_TIMESTAMP",
    "date time": "DATETIME",
    "date": "DATE",
    "default": "DEFAULT",
    "delete from": "DELETE FROM",
    "descend": "DESC",
    "describe": "DESC",
    "distinct": "DISTINCT",
    "drop database": "DROP DATABASE",
    "drop table": "DROP TABLE",
    "else": "ELSE",
    "end": "END",
    "from": "FROM",
    "group by": "GROUP BY",
    "in": "IN",
    "insert into": "INSERT INTO",
    "insert": "INSERT",
    "interval": "INTERVAL",
    "into": "INTO",
    "like": "LIKE",
    "limit": "LIMIT",
    "not": "NOT",
    "null": "NULL",
    "or": "OR",
    "order by": "ORDER BY",
    "order by": "ORDER BY",
    "primary key": "PRIMARY KEY",
    "select": "SELECT",
    "set": "SET",
    "show warnings": "SHOW WARNINGS",
    "show": "SHOW",
    "source": "SOURCE",
    "source": "SOURCE",
    "star": "*",
    "then": "THEN",
    "time": "TIME",
    "timestamp": "TIMESTAMP",
    "update": "UPDATE",
    "use": "USE",
    "values": "VALUES",
    "when": "WHEN",
    "where": "WHERE",
    "references": "REFERENCES",
    "join": "JOIN",
    "on": "ON",
    "inner join": "INNER JOIN",
    "left join": "LEFT JOIN",
    "right join": "RIGHT JOIN",
    # -----------compound commands-----------------
    "select star from": "SELECT * FROM",
    "insert into": "INSERT INTO",
    "not like": "NOT LIKE",
    "not null": "NOT NULL",
    "is null": "IS NULL",
    "not between": "NOT BETWEEN",
    "not in": "NOT IN",
    "if exists": "IF EXISTS",
    "on delete cascade": "ON DELETE CASCADE",
}


mod.list("sql_functions")
ctx.lists["user.sql_functions"] = {
    "average": "AVG",
    "cast": "CAST",
    "char length": "CHAR_LENGTH",
    "char": "CHAR",
    "concat W S": "CONCAT_WS",
    "concat": "CONCAT",
    "count": "COUNT",
    "cur date": "CURDATE",
    "cur time": "CURTIME",
    "date add": "DATE_ADD",
    "date diff": "DATEDIFF",
    "date format": "DATE_FORMAT",
    "day name": "DAYNAME",
    "day of week": "DAYOFWEEK",
    "day of year": "DAYOFYEAR",
    "day": "DAY",
    "decimal": "DECIMAL",
    "double": "DOUBLE",
    "float": "FLOAT",
    "integer": "INT",
    "lower": "LOWER",
    "max": "MAX",
    "min": "MIN",
    "now": "NOW",
    "replace": "REPLACE",
    "reverse": "REVERSE",
    "substring": "SUBSTRING",
    "sum": "SUM",
    "upper": "UPPER",
    "var char": "VARCHAR",
    "foreign key": "FOREIGN KEY",
    "if null": "IFNULL",
    "round": "ROUND",
    "if": "IF",
}
