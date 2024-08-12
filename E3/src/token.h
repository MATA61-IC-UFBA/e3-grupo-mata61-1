/* token.h */

typedef enum {
        ID = 256, 
	NUM, 
        ARRAY,
        //KEY,
        BOOLEAN, //259
        CHAR_KEY,  
        ELSE,
        FALSE,
        FOR,
        FUNCTION,
        IF,
        INTEGER,
        PRINT,
        RETURN,
        STRING,
        TRUE,
        VOID,
        WHILE,
        //SYMC comeca 273
        LESS_THAN_OR_EQUAL, // <=
        GREATER_THAN_OR_EQUAL, // >=
        EQQ, // ==
        NOT_EQUALS, // !=
        AND, // &&
        OR,  // ||
        //SYM,  
        ADD, // +
        MINUS, // -
        DIV, // /
        PLUS, // * 
        PERCENT, // %
        EXCLAMATION, // !
        LESS_THAN, //<
        GREATER_THAN, // >
        EQUALS, // =
        COLON, // :
        SEMICOLON, // ;
        COMMA, // ,
        OPEN_PAREN, // (
        CLOSE_PAREN, // )
        OPEN_BRACKET,// []
        CLOSE_BRACKET, // ]
        OPEN_BRACE, // {
        CLOSE_BRACE, // }
        BACKSLASH,  // comentario
        CHAR,
	STR,
	ERROR
} token_t; 

