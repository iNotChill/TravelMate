Feature: Gestión de preferencias de viaje

  Como usuario
  Quiero agregar mis preferencias de viaje
  Para que la página me muestre las opciones de viaje que se ajusten a mis necesidades y presupuesto

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere agregar sus preferencias de viaje
    Given el usuario ingresa a la aplicación
    And se encuentra en la página de inicio
    When el usuario hace clic en el botón "Buscar"
    Then podrá identificar los campos [Ubicación, Fecha, Tamaño de habitación] de manera específica

#-----------------------------------------------------------------------------
Input: Preferencias seleccionadas correctamente
Output: Se mostrarán las opciones de viaje ajustadas a las necesidades y presupuesto del usuario