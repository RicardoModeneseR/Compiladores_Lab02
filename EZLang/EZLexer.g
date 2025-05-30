lexer grammar EZLexer;

// Tokens (serão definidos em uma seção de lexer)
PROGRAM: 'program';
VAR: 'var';
BEGIN: 'begin';
END: 'end';
BOOL: 'bool';
INT: 'int';
REAL: 'real';
STRING: 'string';
IF: 'if';
THEN: 'then';
ELSE: 'else';
READ: 'read';
WRITE: 'write';
REPEAT: 'repeat';
UNTIL: 'until';
TRUE: 'true';
FALSE: 'false';

ASSIGN: ':=';
SEMI: ';';
LPAR: '(';
RPAR: ')';

LT: '<';
EQ: '=';
PLUS: '+';
MINUS: '-';
TIMES: '*';
OVER: '/';

ID: [a-zA-Z_][a-zA-Z_0-9]*;
INT_VAL: [0-9]+;
REAL_VAL: [0-9]+ '.' [0-9]+;
STR_VAL: '"' .*? '"';

WS: [ \t\r\n]+ -> skip;