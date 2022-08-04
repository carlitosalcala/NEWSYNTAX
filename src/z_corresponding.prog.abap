*&---------------------------------------------------------------------*
*& Report Z_518375
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_corresponding.

SELECT FROM scarr FIELDS * INTO TABLE @DATA(lt_scarr).

cl_demo_output=>write(
  EXPORTING
      data = lt_scarr
            ).

DATA lt_corresponding TYPE STANDARD TABLE OF scarr.

lt_corresponding = CORRESPONDING #( lt_scarr ).

cl_demo_output=>write(
  EXPORTING
      data = lt_corresponding
            ).

DATA lt_except TYPE STANDARD TABLE OF scarr.

lt_except = CORRESPONDING #( lt_scarr EXCEPT carrname url ).

cl_demo_output=>write(
  EXPORTING
      data = lt_except
            ).

TYPES: BEGIN OF ty_scarr,
         carrid   TYPE s_carr_id,
         carrname TYPE s_carrname,
         currcode TYPE s_currcode,
         url      TYPE s_carrurl,
         name     TYPE s_carrname,
         weburl   TYPE s_carrurl,
       END OF ty_scarr.

DATA lt_mapping TYPE STANDARD TABLE OF ty_scarr.

lt_mapping = CORRESPONDING #( lt_scarr MAPPING name = carrname
                                               weburl = url
                                        EXCEPT carrname url
                                        ).

cl_demo_output=>display(
  EXPORTING
      data = lt_mapping
            ).
