CLASS z_reduce_scrabble DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

      INTERFACES if_oo_adt_classrun.
    METHODS score
      IMPORTING
        input         TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE i.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_REDUCE_SCRABBLE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( score( 'aF' ) ).
  ENDMETHOD.


  METHOD score.

* Counter Column C  A + B
* 1                   1
*	2	        1	        3
*	3	        3	        6
*	4	        6	        10
* 5         10        15
* 6         15        21
* 7         21        28
* 8         28        36
* 9         36        45
* 10        45        55

*    result =
     cl_demo_output=>display(
      REDUCE i( INIT s = 0
                FOR  i = 1 UNTIL i > 10
                NEXT s = s + i ) ).

*  REDUCE string( INIT s = 0
*                 FOR  i = 0 WHILE i < strlen( input )
*                 NEXT s += COND i( LET current_val = to_upper( input+i(1) ) IN
*                 WHEN contains( val = 'AEIOULNRST' sub = current_val ) THEN 1
*                 WHEN contains( val = 'DG' sub = current_val ) THEN 2
*                 WHEN contains( val = 'BCMP' sub = current_val ) THEN 3
*                 WHEN contains( val = 'FHVWY' sub = current_val ) THEN 4
*                 WHEN contains( val = 'K' sub = current_val ) THEN 5
*                 WHEN contains( val = 'JX' sub = current_val ) THEN 8
*                 WHEN contains( val = 'QZ' sub = current_val ) THEN 10
*                 ELSE 0
*                 ) ).
  ENDMETHOD.
ENDCLASS.
