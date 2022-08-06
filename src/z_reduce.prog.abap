REPORT Z_REDUCE.

CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main IMPORTING p TYPE csequence.
ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.
    DESCRIBE FIELD p TYPE DATA(t).
    cl_demo_output=>display( |{ p } of type { t }| ).
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  demo=>main(
                REDUCE #( INIT s = 0
                        FOR  i = 1 UNTIL i > 10
                        NEXT s = s + i ) ).
