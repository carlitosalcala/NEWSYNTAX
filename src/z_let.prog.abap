*&---------------------------------------------------------------------*
*& Report z_let
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_let.


CLASS lcl_iterator DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS: main,
      get_next_weapon
        RETURNING VALUE(lv_text) TYPE char40 .
ENDCLASS.

CLASS lcl_iterator IMPLEMENTATION.
  METHOD main.
  ENDMETHOD.
  METHOD get_next_weapon.
    DATA(rnd) = cl_abap_random_int=>create(
                  seed = CONV i( sy-uzeit + sy-index ) min = 1 max = 10
                  ).

    lv_text = | Very dangerous weapon nr: { rnd->get_next( ) } | .

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.

  TYPES: BEGIN OF l_typ_monsters,
           monster_name   TYPE char20,
           monster_number TYPE integer,
           sanity         TYPE int4,
         END OF l_typ_monsters.

  DATA: lt_monsters TYPE STANDARD TABLE OF l_typ_monsters.


  lt_monsters =
          VALUE #(
              ( monster_name = 'FRED' monster_number = 1 )
              ( monster_name = 'HUBERT' monster_number = 2 )
              ( monster_name = 'SITO' monster_number = 3 )
              ( monster_name = 'MARU' monster_number = 4 )
              ).


  DO lines( lt_monsters[] ) TIMES.

    DATA(ld_weapon_description) =
        CONV string(
                LET
                    weapon_name = lcl_iterator=>get_next_weapon( )
                    monster_name = lt_monsters[ sy-index ]-monster_name
                    date_string = |{ sy-datum+6(2) } / { sy-datum+4(2) } / { sy-datum(4) } |
                        IN | Monster { monster_name } was issued a { weapon_name } on { date_string } |
                    ).
    WRITE:/ ld_weapon_description.

  ENDDO.

*  DATA(date_string) = |{ sy-datum+6(2) } / { sy-datum+4(2) } / { sy-datum(4) } { lcl_iterator=>get_next_weapon( ) }  |  . " IN | Monster { monster_name } was issued a { weapon_name } on { date_string } |.
*  write date_string.
