Feature: Cancelación de planificación de viaje

  Como usuario
  Quiero poder cancelar la planificación de viaje en cualquier momento del proceso
  Para tener la flexibilidad de cambiar mis planes sin complicaciones

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere cancelar la planificación de un viaje
    Given el usuario se encuentra en cualquier pantalla del proceso de planificación de un viaje
    And el usuario ha iniciado la planificación de un viaje
    When el usuario hace clic en el botón "Delete Event"
    Then el sistema muestra un mensaje de confirmación para cancelar la planificación con las opciones "Sí" y "No"
    And if el usuario selecciona "Sí"
      Then el sistema elimina todos los datos de la planificación actual
      And el usuario es redirigido a la pantalla principal o a una pantalla anterior a la planificación
      And el sistema muestra un mensaje de confirmación indicando que la planificación ha sido cancelada
    And if el usuario selecciona "No"
      Then el sistema no elimina los datos de la planificación
      And el usuario permanece en la misma pantalla de planificación

#-----------------------------------------------------------------------------
Input: El usuario hace clic en el botón "Delete Event"
Output:
- Mensaje de confirmación de la cancelación de la planificación del viaje si se selecciona "Sí"
- Redirección a la ventana de inicio o pantalla anterior si se selecciona "Sí"
- Persistencia de datos y permanencia en la misma pantalla si se selecciona "No"