CLASS zghays_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zghays_test IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA variable TYPE string.
    variable = 'Hello World'.
    out->write( variable ).
    DATA(variable2) = 15.
    DATA(variable3) = 17.
    DATA(ergebnise) = variable2 + variable3.
    out->write( ergebnise ).

    IF ergebnise > 20.
        out->write( 'YAA' ).
    ELSE.
        out->write( 'NEIn' ).
    ENDIF.

    DATA carrier_id TYPE /dmo/carrier_id VALUE 'LH'.

        IF carrier_id = 'LH' OR carrier_id = 'lh' OR carrier_id = 'Lh' OR carrier_id = 'lH'.
          out->write( 'Lufthansa' ).
        ELSEIF carrier_id = 'AA' OR carrier_id = 'aa' OR carrier_id = 'Aa' OR carrier_id = 'aA'.
          out->write( 'American Airlines' ).
        ELSE.
          out->write( carrier_id ).
        ENDIF.

        CASE carrier_id.
          WHEN 'LH' OR 'lh' OR 'Lh' OR 'lH'.
            out->write( 'Lufthansa' ).
          WHEN 'AA' OR 'aa' OR 'Aa' OR 'aA'.
            out->write( 'American Airlines' ).
          WHEN OTHERS.
            out->write( carrier_id ).
        ENDCASE.

        out->write( SWITCH #( carrier_id WHEN 'LH' OR 'lh' OR 'Lh' OR 'lH' THEN 'Lufthansa'
                                 WHEN 'AA' OR 'aa' OR 'Aa' OR 'aA' THEN 'American Airlines'
                                 ELSE carrier_id ) ).

  ENDMETHOD.
ENDCLASS.
