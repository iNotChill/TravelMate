Feature: Notificación de información faltante

  Como usuario
  Quiero que la plataforma me indique cuando no coloqué toda la información necesaria
  Para que pueda generar un itinerario

#-----------------------------------------------------------------------------
  Scenario: Notificación de información faltante
    Given el usuario se encuentra en la pantalla de planificación y está ingresando información para generar un itinerario
    And ha proporcionado datos incompletos o ha omitido algún dato necesario
    When intente generar el itinerario para activarlo o guardarlo
    Then se mostrará una notificación indicando que falta información
    And especificará qué información falta
    And no se generará el itinerario hasta completar los datos necesarios

#-----------------------------------------------------------------------------
Input: Usuario
Output: Notificación de información faltante