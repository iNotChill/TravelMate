Feature: Recomendaciones personalizadas

  Como usuario
  Quiero recibir recomendaciones personalizadas de viajes
  Para obtener opciones que se ajusten a mis intereses y experiencias pasadas

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere recibir recomendaciones personalizadas
    Given el usuario ingresa a la aplicación
    And se encuentra en la página de inicio
    When el usuario hace clic en el botón "Ver más"
    Then visualizará "PARA TI" recomendaciones de la aplicación

#-----------------------------------------------------------------------------
Input: Usuario
Output: Las recomendaciones de la aplicación basadas en intereses y experiencias pasadas