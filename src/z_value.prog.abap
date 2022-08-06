*&---------------------------------------------------------------------*
*& Report z_value
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_value.

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

              ).
