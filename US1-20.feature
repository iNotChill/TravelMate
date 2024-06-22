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
Output: Preferencias guardadas: se mostrarán las opciones de viaje ajustadas a las necesidades y presupuesto del usuario



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
Output: PARA TI: Las recomendaciones de la aplicación basadas en intereses y experiencias pasadas



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
Output: OPCIONES: Las 5 alternativas propuestas para vuelos, hoteles, transporte, paquetes turísticos y actividades



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
Output: OPCIONES: [Detalle de actividades], [Administrar viaje], [Vista de itinerario] y [Editar]



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
Output: OPCIONES: Las recomendaciones de la aplicación para cambiar las características del itinerario



Feature: Guardar itinerarios

  Como usuario
  Quiero guardar el plan que más se adapte a mis preferencias y necesidades
  Para poder hacer las reservas correspondientes

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere guardar un itinerario
    Given el usuario se encuentra en la pantalla de itinerario generado
    And hay un itinerario generado para guardar
    When el usuario hace clic en el botón "Guardar itinerario"
    Then el itinerario se guarda en la cuenta del usuario
    And se muestra el mensaje de confirmación "Itinerario guardado exitosamente"
    And la aplicación devuelve al usuario a la ventana principal
    And en la sección de "Guardados" se agregan los itinerarios que se guardaron correctamente

#-----------------------------------------------------------------------------
Input:
- El usuario se encuentra en la pantalla de itinerario generado
- Hay un itinerario generado para guardar
- El usuario hace clic en el botón "Guardar itinerario"

Output:
- El itinerario se guarda en la cuenta del usuario
- Se muestra el mensaje de confirmación "Itinerario guardado exitosamente"
- La aplicación devuelve al usuario a la ventana principal
- En la sección de "Guardados", se agregan los itinerarios que se guardaron correctamente



Feature: Cancelación de planificación de viaje

  Como usuario
  Quiero poder cancelar la planificación de viaje en cualquier momento del proceso
  Para tener la flexibilidad de cambiar mis planes sin complicaciones

#-----------------------------------------------------------------------------
  Scenario: El usuario quiere cancelar la planificación de un viaje
    Given el usuario se encuentra en cualquier pantalla del proceso de planificación de un viaje
    And el usuario ha iniciado la planificación de un viaje
    When el usuario hace clic en el botón "Delete Event"
    Then el sistema muestra un mensaje de confirmación para cancelar la planificación con las opciones "Sí" y "No"
    And if el usuario selecciona "Sí"
      Then el sistema elimina todos los datos de la planificación actual
      And el usuario es redirigido a la pantalla principal o a una pantalla anterior a la planificación
      And el sistema muestra un mensaje de confirmación indicando que la planificación ha sido cancelada
    And if el usuario selecciona "No"
      Then el sistema no elimina los datos de la planificación
      And el usuario permanece en la misma pantalla de planificación

#-----------------------------------------------------------------------------
Input: El usuario hace clic en el botón "Delete Event"
Output:
- Mensaje de confirmación de la cancelación de la planificación del viaje si se selecciona "Sí"
- Redirección a la ventana de inicio o pantalla anterior si se selecciona "Sí"
- Persistencia de datos y permanencia en la misma pantalla si se selecciona "No"



Feature: Eliminación automática de planificación no guardada

  Como usuario
  Quiero que se elimine automáticamente la planificación realizada en caso no la haya guardado
  Para ahorrar tiempo en el proceso de eliminar manualmente una planificación que no sea de mi agrado

#-----------------------------------------------------------------------------
  Scenario: Eliminación automática de planificación no guardada
    Given el usuario se encuentra en la pantalla de planificación
    And el usuario ha creado un plan pero no lo ha guardado
    And el sistema no muestra el mensaje de "viaje guardado satisfactoriamente"
    When el usuario sale de la pantalla de planificación
    Then el sistema verifica si hay planes no guardados
    And if existen planes no guardados
      Then el sistema elimina automáticamente dichos planes
      And al volver a la pantalla de planificación, el usuario no ve nuevamente el plan no guardado anteriormente
      And no se muestra ningún mensaje de confirmación para la eliminación automática

#-----------------------------------------------------------------------------
Input:
- El usuario ha creado un plan pero no lo ha guardado
- El sistema no muestra el mensaje de "viaje guardado satisfactoriamente"
- El usuario sale de la pantalla de planificación

Output:
- El sistema verifica si hay planes no guardados
- Si existen planes no guardados el sistema elimina automáticamente dichos planes
- Al volver a la pantalla de planificación, el usuario no ve nuevamente el plan no guardado anteriormente
- No se muestra ningún mensaje de confirmación para la eliminación automática



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
Output: Notificación de informa



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

