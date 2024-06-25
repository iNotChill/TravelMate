Feature: Eliminación automática de planificación no guardada

  Como usuario
  Quiero que se elimine automáticamente la planificación realizada en caso no la haya guardado
  Para ahorrar tiempo en el proceso de eliminar manualmente una planificación que no sea de mi agrado

#-----------------------------------------------------------------------------
  Scenario: Eliminación automática de planificación no guardada
    Given el usuario se encuentra en la pantalla de planificación
    And el usuario ha creado un plan pero no lo ha guardado
    And el sistema no muestra el mensaje de "viaje guardado satisfactoriamente"
    When el usuario sale de la pantalla de planificación
    Then el sistema verifica si hay planes no guardados
    And if existen planes no guardados
      Then el sistema elimina automáticamente dichos planes
      And al volver a la pantalla de planificación, el usuario no ve nuevamente el plan no guardado anteriormente
      And no se muestra ningún mensaje de confirmación para la eliminación automática

#-----------------------------------------------------------------------------
Input:
- El usuario ha creado un plan pero no lo ha guardado
- El sistema no muestra el mensaje de "viaje guardado satisfactoriamente"
- El usuario sale de la pantalla de planificación

Output:
- El sistema verifica si hay planes no guardados
- Si existen planes no guardados el sistema elimina automáticamente dichos planes
- Al volver a la pantalla de planificación, el usuario no ve nuevamente el plan no guardado anteriormente
- No se muestra ningún mensaje de confirmación para la eliminación automática