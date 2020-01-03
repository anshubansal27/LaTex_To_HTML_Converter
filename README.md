# LaTex_To_HTML

This project was a part of the course, Software Systems Laboratory, at IIT-Delhi.
**Abstract:** Given a LaTeX document, convert it to its equivalent HTML page.

## Tech Stack
Tools: Flex, Bison
Programming Language: C

## Flex(Fast Lexical Analyzer) - first.l
A tool to generate scanners. Flex was used to identify patterns in LaTeX file using regular expressions and generate tokens out of them.

## Bison - first.y
A tool to generate parsers which use LALR(1) parsing tables. This file is a collection of production rules, collectively called grammar, that can parse a valid LaTeX file. It uses tokens outputted by the scanner to match with suitable rule and construct parse tree.

## Project flow:
* sequence of characters read from LaTeX document(identified and tokenised by Flex)
* generated token matched with production rule written in first.y
* after completing one production rule, a semantic action is taken to construct one node of AST(Abstract Syntax Tree) based on this rule
* repeat untill End of Line of the document
* generate the HTML code by doing DFS traversal on AST
* Each node of the AST is built in such a manner that it carries enough information to perform code generation step at the end. * Structure of the node and different functions are defined in ast.h file and these functions are being called in the .y file as semantic actions to be taken at the end of each production rule.

## Commands to run:

make

Then run:

sh build.sh
