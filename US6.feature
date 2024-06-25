Feature: Cambio de características del itinerario

  Como usuario
  Quiero cambiar las características de los itinerarios
  Para adaptarlos a cualquier modificación en mis planes de viaje

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere cambiar características del itinerario
    Given el usuario ingresa a la aplicación
    And se encuentra en la página de inicio
    When el usuario hace clic en el botón "Menú de opciones"
    Then visualizará "OPCIONES" del campo seleccionado

#-----------------------------------------------------------------------------
Input: Usuario
Output:Las recomendaciones de la aplicación para cambiar las características del itinerario