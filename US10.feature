Feature: Notificación de falta de información

  Como usuario
  Quiero que la plataforma me notifique en caso de que no haya encontrado información acorde a mis preferencias
  Para poder ajustar los criterios de búsqueda

#-----------------------------------------------------------------------------
  Scenario: Notificación de falta de información
    Given el usuario se encuentra en la pantalla de planificación y ha realizado una búsqueda
    And no hay resultados acorde a sus preferencias
    When se muestran los resultados de la búsqueda en la pantalla de planificación
    Then se mostrará una notificación indicando que no se encontró información acorde
    And se brindarán sugerencias para ajustar los criterios de búsqueda

#-----------------------------------------------------------------------------
Input: Usuario
Output: Notificación de falta de información y sugerencias para ajustar la búsqueda