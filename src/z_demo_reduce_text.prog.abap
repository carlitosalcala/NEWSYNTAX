*&---------------------------------------------------------------------*
*& Report Z_DEMO_REDUCE_TEXT
*&---------------------------------------------------------------------*
*& A table comprehension is used to construct a new internal table switched_words
*& from the content of an internal table words. In the new table, the condition
*& operator SWITCH replaces certain rows of the existing internal table with other rows.
*& This table is specified in the FOR expression of the REDUCE expression and its rows
*& are reduced to a text string using a chaining after NEXT. This text string is then
*& assigned to the variable sentence. Here, the auxiliary variable sep declared after INIT
*& is initial for the first read row and is filled with a blank here for the evaluation of
*& further rows.
*&
*& This example also demonstrates an alternative implementation in which the table
*& comprehension is embedded directly in the table reduction. Here, the auxiliary
*& variable switched_words is not required, but the source code is much harder to read.
*& A human reader, for example, can hardly tell that the FOR expressions are not sequential
*& and that the table comprehension is executed first, followed by the table reduction
*& for the result.
*&---------------------------------------------------------------------*
REPORT Z_DEMO_REDUCE_TEXT.

CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.
ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.
    TYPES strings TYPE STANDARD TABLE OF string WITH EMPTY KEY.
    DATA(words) = VALUE strings(
      ( `All` )
      ( `ABAP` )
      ( `constructs` )
      ( `are` )
      ( `imperative` ) ).
    cl_demo_output=>write( words ).

    "Table comprehension into helper table
    DATA(switched_words) = VALUE strings(
          FOR word IN words
           ( SWITCH #( word WHEN `All`        THEN `Some`
                            WHEN `imperative` THEN `functional`
                            ELSE word ) ) ).
    cl_demo_output=>write_data( switched_words ).

    "Table reduction of helper table
    DATA(sentence) =
      REDUCE string( INIT text = `` sep = ``
        FOR word IN switched_words
        NEXT text = |{ text }{ sep }{ word }| sep = ` ` ) && '.'.
    cl_demo_output=>write_data( sentence ).

    "Obfuscation - all in one
    ASSERT sentence =
      REDUCE string( INIT text = `` sep = ``
        "Table reduction
        FOR word IN VALUE strings(
          "Table comprehension
          FOR word IN words
           ( SWITCH #( word WHEN `All`        THEN `Some`
                            WHEN `imperative` THEN `functional`
                            ELSE word ) ) )
        NEXT text = |{ text }{ sep }{ word }| sep = ` ` ) && '.'.

    cl_demo_output=>display(  ).
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  demo=>main( ).
