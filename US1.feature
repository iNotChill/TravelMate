Feature: Gestión de cuentas de usuario

  Como usuario
  Quiero poder iniciar sesión o crear mi cuenta
  Para poder acceder al servicio completo de planificación de viajes y guardar mis preferencias e itinerarios

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere crear una nueva cuenta
    Given el usuario ingrese a la aplicación
    And el usuario no se encuentre registrado
    And el usuario haga clic en el botón "Crear cuenta"
    When el usuario ingrese todos los campos obligatorios y haga clic en el botón "Crear cuenta"
    Then el sistema verifica que se hayan ingresado datos válidos en los campos 
         [País de residencia, Tipo de documento, N° documento, Nombres, Apellidos, Año de nacimiento, Género, Número de teléfono, Email, Contraseña]
    And se registra exitosamente la cuenta
    And se muestra la página de inicio

#-----------------------------------------------------------------------------
Input: Usuario
Output: Registro: se mostrará la confirmación de la cuenta creada y la página de inicio.