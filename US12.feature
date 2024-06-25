Feature: Reseñas y calificaciones

  Como usuario
  Quiero dejar reseñas de los itinerarios que he usado previamente
  Para señalar si es una opción adecuada para otros usuarios

#-----------------------------------------------------------------------------
  Scenario: Dejar reseñas de itinerarios
    Given el usuario ha completado un itinerario
    And desea dejar una reseña
    And se encuentra en la pestaña "Guardados"
    When el usuario accede a la sección de reseñas y escribe su opinión
    Then la reseña se publica
    And está disponible para otros usuarios

#-----------------------------------------------------------------------------
Input: Usuario
Output: Se publicará la reseña