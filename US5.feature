Feature: Modificación del itinerario

  Como usuario
  Quiero revisar y modificar el itinerario generado por el asistente virtual
  Para que el plan se adapte a mis necesidades

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere modificar un itinerario
    Given el usuario ingresa a la aplicación
    And se encuentra en la sección "Guardados"
    When el usuario hace clic en el viaje que desea editar
    Then visualizará las opciones [Detalle de actividades], [Administrar viaje] y [Vista de itinerario]
    When el usuario hace clic en "Detalle de actividades"
    Then visualizará la opción "Editar" donde podrá realizar las modificaciones de la actividad

#-----------------------------------------------------------------------------
Input: Usuario
Output: [Detalle de actividades], [Administrar viaje], [Vista de itinerario] y [Editar]