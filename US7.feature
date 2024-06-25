Feature: Guardar itinerarios

  Como usuario
  Quiero guardar el plan que más se adapte a mis preferencias y necesidades
  Para poder hacer las reservas correspondientes

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere guardar un itinerario
    Given el usuario se encuentra en la pantalla de itinerario generado
    And hay un itinerario generado para guardar
    When el usuario hace clic en el botón "Guardar itinerario"
    Then el itinerario se guarda en la cuenta del usuario
    And se muestra el mensaje de confirmación "Itinerario guardado exitosamente"
    And la aplicación devuelve al usuario a la ventana principal
    And en la sección de "Guardados" se agregan los itinerarios que se guardaron correctamente

#-----------------------------------------------------------------------------
Input:
- El usuario se encuentra en la pantalla de itinerario generado
- Hay un itinerario generado para guardar
- El usuario hace clic en el botón "Guardar itinerario"

Output:
- El itinerario se guarda en la cuenta del usuario
- Se muestra el mensaje de confirmación "Itinerario guardado exitosamente"
- La aplicación devuelve al usuario a la ventana principal
- En la sección de "Guardados", se agregan los itinerarios que se guardaron correctamente