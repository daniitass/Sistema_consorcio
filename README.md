## Trabajo Práctico  BBDD 

### Problema:
Enunciado del problema a resolver.
Se desea realizar un sistema para un consorcio pueda llevar el control de los pagos de expensas, control de gastos y pago de haberes de encargado (solo puede haber un encargado por edificio), necesita poder observar los deudores y así enviarles un mail con la deuda. 
 

### Solución:
Crear un sistema donde se carguen los pagos efectuados y poder ver las personas deudoras ( mostrando su info de contacto para enviar el recordatorio de deuda).

# Nombre del equipo
**Jubilados FC**

## Listar integrantes del equipo

| Nombre   | Apellido       
|----------|----------------
| Jaime Nahuel|   Miguel    
| Daniela Georgina | Tassara Botello|    
# Enunciado del problema a resolver

Se desea realizar un sistema para que un consorcio pueda llevar el control de los pagos de expensas, el control de gastos y el pago de haberes del encargado (solo puede haber un encargado por edificio) y que a los deudores se les envíe un mail con la deuda.

## Condiciones que debe cumplirse para una aceptación del usuario

>[!IMPORTANT]
> ### Incluir restricciones
En base a estas preguntas:

- **¿Cuántos encargados acepta la administración por edificio?**
  - La administración acepta edificios con solo 1 encargado.

- **¿Cuál es el medio de comunicación utilizado para notificar a los deudores?**
  - Los medios de comunicación para notificar al deudor es el mail.

- **¿Cómo recibe la administración la notificación de pago de los residentes?**
  - Recibe la notificación del pago a través del mail donde el residente envía el comprobante de pago.

- **¿Quién verifica el ingreso del pago en la cuenta bancaria y registra el abono en el sistema?**
  - La persona administrativa se encarga de verificar el ingreso del pago en la cuenta bancaria, y posteriormente ingresa en el sistema que esa expensa fue abonada.

- **¿Cuántos residentes se pueden registrar por unidad funcional?**
  - Se puede registrar la cantidad necesaria de residentes por unidad funcional.

## Para ser usuario
- Debe tener acceso a la cuenta bancaria y al mail para verificar el pago.

## Para aceptar una Unidad Funcional
- Debe tener 1 solo encargado.
- Debe clasificar sus departamentos por piso y departamento.
- Debe localizarse dentro de CABA - Argentina.

## Para ser Residente
- Debe ser inquilino o ser dueño de la unidad funcional.
- Debe declarar su mail por donde enviará los comprobantes de pago.

## Para ser encargado
- Debe trabajar en al menos 1 unidad funcional.
- Debe declarar sus datos personales (CUIT, DNI, Nombre, Apellido, Teléfono y mail).

## Incluir al menos 3 reportes
> [!NOTE]
> - Listado de deudores.
> - Registro del monto del haber de los encargados.
> - Listado de residentes.

