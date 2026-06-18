
# Módulo 2 - Renta Fija

Hasta dentro de lo que es renta fija vimos caución, plazo fijo, cheques y
letras. Hoy vamos a ver Obligaciones Negociables (ONs), Fondos Comunes
de Inversión (FCI) y bonos.

# Características de Bonos

- Emisor: El Estado -> Bono. Una empresa -> ON

- Monto de emisión: Ej. 10M. Es importante para saber si una deuda es pagable.
  Una empresa valuada en 100.000 USD no puede emitir 50M. Si esa situación se
  diera, va a costar colocar el instrumento en el primario, luego caerá precio
  en el secundario, etc.

- Moneda de integración: moneda que reciben. Pesos, dólares, euros, incluso
  bonos de la propia empresa. La moneda de pago puede ser distinta. (Cambiar
  una ON por otra no está mal visto, siempre que la empresa demuestre que lo
  necesita.)

- Plazo del bono: 5, 10, 20 años.

- Valor nominal: 1/100

- Renta: intereses por el capital. Puede ser fija o variable.

- Plazos de pago: trimestral, semestral, anual.

- Amortización: Pago de capital. Puede ser: todo junto al final, cuotas a
  partir de cierta fecha, una cantidad por período. (El mercado se _regula
  solo_: hay demanda o no de acuerdo a las condiciones).

- Legislación: dónde vamos a discutir si hay algún problema. Legislación
  extranjera es más seguro. En Argentina hay menor seguridad jurídica.

- Lámina mínima: 100, 1000, 1500, 150.000. Para buscar inversores más grandes y
  menor liquidez o viceversa.
  
- Tramo no competitivo: queremos entrar sin importar la tasa. Para minoristas.

- Moneda de pago: Moneda en que se paga, en el caso argentino, incluyendo el
  tipo de cambio. Esto indica qué supone el instrumento. Por ejemplo, un bono
  atado al oficial en Argentina supone protección frente a la devaluación o 
  liberación del cepo.
  
# Calificadoras de riesgo

Categorizan bonos de acuerdo al riesgo. Por ejemplo: *Standard & Poor's*.

Calificaciones. AAA, AA, ... BBB, BB, ... CCC, CC, C, D.

Lo más importante: Qué precio piden en relación al riesgo que corro.

(No importa el presidente. No es bueno pagar paridad en Argentina por los
próximos 10 años).

# Lectura de Bonos

Tenemos una planilla para revisar bonos.

- Nombre. ON: `Empresa/Serie/Clase`

- Ticker.

- Vencimiento.

- Amortización (Al Vto., 3-anual).

- Cupón (Semestral, trimestral, etc). Cada cuánto dan renta.

- Próximo vencimiento. Fecha del próximo pago. Acompaña una letra, dependiendo
  del tipo de pago: Renta (R), Capital (C).
  
- Cotización (con fecha).

- Renta anual. En %. Ej.: Fija=6.5; Var.=3.5.

- TIR anual. Rendimiento a _finish_.

- DM. Si la TIR se mueve 1%, cuánto se mueve el precio en %.

# Además

## Intereses corridos

Representa la acumulación de intereses desde el último pago. Ej.: 12% anual, con
100 USD invertidos, crece 1 USD por mes. Intereses devengados, todavía no
pagados.

## Valor residual

Valor nominal del bono menos los pagos de Capital (Amortizaciones). Cuánto deben
sin contar el interés.

## Valor técnico

Cuánto _debería_ valer el bono. Valor residual + Intereses corridos. Capital que
falta pagar + intereses devengados.

## Paridad

Precio de mercado / valor técnico.

Entonces: 
- Cuando está sobre la par: Precio de mercado > valor técnico. 
- Cuando está bajo la par: Precio de mercado < valor técnico.

Bajo la par no es igual a barato. Depende de la paridad y de las _expectativas_.

# Yield Anual

Cupon este año / Precio de mercado.

Diferencia con TIR. Dice, durante este año, qué rinde el bono. La TIR lo valora
en relación a todo el flujo de fondos (a _finish_).

Utilidad. Se relaciona con los intereses corridos.

```c
// NOTE(dan): Quedo 1h 1m
```

