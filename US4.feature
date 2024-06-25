Feature: Opciones de viaje

  Como usuario
  Quiero ver diferentes opciones de viaje para vuelos, hoteles, paquetes turísticos y actividades
  Para encontrar la mejor opción para mi viaje

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere ver diferentes opciones de viaje
    Given el usuario ingresa a la aplicación
    And se encuentra en la página de inicio
    When el usuario hace clic en el botón "Menú de opciones"
    Then visualizará "OPCIONES" del campo seleccionado

#-----------------------------------------------------------------------------
Input: Usuario
Output: Las 5 alternativas propuestas para vuelos, hoteles, transporte, paquetes turísticos y actividades