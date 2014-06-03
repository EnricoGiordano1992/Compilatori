/* A Bison parser, made by GNU Bison 2.5.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2011 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     CHAR = 258,
     INT = 259,
     FLOAT = 260,
     DOUBLE = 261,
     BOOL = 262,
     ID = 263,
     NUMBER = 264,
     CONST = 265,
     IF = 266,
     RET = 267,
     WHILE = 268,
     PLUS = 269,
     MIN = 270,
     DIV = 271,
     MUL = 272,
     MINMIN = 273,
     MAXMAX = 274,
     P_VIRG = 275,
     OPEN = 276,
     CLOSE = 277,
     EQ = 278,
     TAKE = 279
   };
#endif
/* Tokens.  */
#define CHAR 258
#define INT 259
#define FLOAT 260
#define DOUBLE 261
#define BOOL 262
#define ID 263
#define NUMBER 264
#define CONST 265
#define IF 266
#define RET 267
#define WHILE 268
#define PLUS 269
#define MIN 270
#define DIV 271
#define MUL 272
#define MINMIN 273
#define MAXMAX 274
#define P_VIRG 275
#define OPEN 276
#define CLOSE 277
#define EQ 278
#define TAKE 279




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


