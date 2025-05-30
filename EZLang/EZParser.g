parser grammar EZParser;
options {
	tokenVocab = EZLang;
}

program: PROGRAM ID SEMI varsSect stmtSect;

varsSect: VAR varDecl*;

varDecl: typeSpec ID SEMI;

typeSpec: BOOL | INT | REAL | STRING;

stmtSect: BEGIN stmt+ END;

stmt: assignStmt | ifStmt | readStmt | repeatStmt | writeStmt;

assignStmt: ID ASSIGN expr SEMI;

ifStmt: IF expr THEN stmt+ (ELSE stmt+)? END;

readStmt: READ ID SEMI;

repeatStmt: REPEAT stmt+ UNTIL expr;

writeStmt: WRITE expr SEMI;

expr:
	expr op expr
	| LPAR expr RPAR
	| TRUE
	| FALSE
	| INT_VAL
	| REAL_VAL
	| STR_VAL
	| ID;

op: LT | EQ | PLUS | MINUS | TIMES | OVER;