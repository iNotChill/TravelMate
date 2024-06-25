Feature: Eliminación de itinerarios guardados

  Como usuario
  Quiero poder eliminar los itinerarios que ya haya utilizado o guardado
  Para mantener mi lista de itinerarios organizada

#-----------------------------------------------------------------------------
  Scenario: Eliminar itinerarios guardados
    Given el usuario se encuentra en la pantalla de itinerarios guardados
    And desea eliminar un itinerario
    When el usuario selecciona el itinerario y hace clic en el botón "Detalle de actividades"
    And el usuario da clic en el botón "Delete event"
    Then el itinerario se elimina de la lista de itinerarios guardados
    And se muestra un mensaje de confirmación "Itinerario eliminado exitosamente"

#-----------------------------------------------------------------------------
Input: Usuario
Output: Se borra el itinerario y se muestra un mensaje al usuario