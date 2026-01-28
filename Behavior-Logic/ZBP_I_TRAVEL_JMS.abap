CLASS lhc_travel DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS validateDates FOR VALIDATE ON SAVE
      IMPORTING keys FOR Travel~validateDates.

ENDCLASS.

CLASS lhc_travel IMPLEMENTATION.

  METHOD validateDates.
    " 1. Lee los datos que el usuario está guardarndo
    READ ENTITIES OF zi_travel_jms IN LOCAL MODE
      ENTITY Travel
      FIELDS ( BeginDate EndDate ) WITH CORRESPONDING #( keys )
      RESULT DATA(travels).

    " 2. Bucle por viaje para comprobar regla
    LOOP AT travels INTO DATA(travel).

      IF travel-EndDate < travel-BeginDate.

        " 3. Si falla, avisa al sis (FAILED)
        APPEND VALUE #( %tky = travel-%tky ) TO failed-travel.

        " 4. Y envia mensaje error al usuario (REPORTED)
        APPEND VALUE #( %tky = travel-%tky
                        %msg = new_message_with_text(
                                 severity = if_abap_behv_message=>severity-error
                                 text     = '¡Error! La fecha de fin es anterior al inicio.'
                               )
                        %element-BeginDate = if_abap_behv=>mk-on
                        %element-EndDate   = if_abap_behv=>mk-on
                      ) TO reported-travel.

      ENDIF.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
