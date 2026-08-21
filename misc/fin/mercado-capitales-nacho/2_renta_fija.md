
# Módulo 2 - Renta Fija

Hasta dentro de lo que es renta fija vimos caución, plazo fijo, cheques y
letras. Hoy vamos a ver Obligaciones Negociables (ONs), Fondos Comunes de
Inversión (FCI) y bonos.

# Características de Bonos

**Emisor**: Si es el Estado, se llama Bono. Si es una empresa, Obligación
Negociable.

**Monto de emisión**: Ej. 10M. Es importante para saber si una deuda es pagable.
Una empresa valuada en 100.000 USD no puede emitir 50M. Si esa situación se
diera, va a costar colocar el instrumento en el primario, luego caerá precio en
el secundario, etc.

**Moneda de integración**: moneda que recibe el emisor. Pesos, dólares, euros,
incluso bonos de la propia empresa. La moneda de pago puede ser distinta.
(Cambiar una ON por otra no está mal visto, siempre que la empresa demuestre
que lo necesita.)

**Plazo del bono**: 5, 10, 20 años.

**Valor nominal**: 1/100

**Renta**: intereses pagados por el capital. Puede ser fija o variable.

**Plazos de pago**: trimestral, semestral, anual.

**Amortización**: Pago de capital. Puede ser: todo junto al final, cuotas a
partir de cierta fecha, una cantidad por período. (El mercado se _regula solo_:
puede haber demanda del instrumento o no de acuerdo a las condiciones).

**Legislación**: en qué Corte vamos a discutir si hay algún problema.
Legislación extranjera es más seguro. En Argentina hay menor seguridad jurídica.

**Lámina mínima**: 100, 1000, 1500, 150.000. Si un instrumento apunta buscar inversores más grandes
y menor liquidez o viceversa.
  
**Tramo no competitivo**: queremos entrar sin importar la tasa. Para minoristas.

**Moneda de pago**: Moneda en que se paga, en el caso argentino, incluyendo el
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

**Nombre**. ON: `Empresa/Serie/Clase`

**Ticker**.
**Vencimiento**.

**Amortización** (Al Vto., 3-anual).

**Cupón** (Semestral, trimestral, etc). Cada cuánto dan renta.

**Próximo vencimiento**. Fecha del próximo pago. Acompaña una letra, dependiendo
del tipo de pago: Renta (R), Capital (C).

**Cotización** (con fecha).

**Renta anual**. En %. Ej.: Fija=6.5; Var.=3.5.

**TIR anual**. Rendimiento a _finish_.

**DM**. Si la TIR se mueve 1%, cuánto se mueve el precio en %.

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

## Yield Anual

Cupon este año / Precio de mercado.

Diferencia con TIR. Dice, durante este año, qué rinde el bono. La TIR lo valora
en relación a todo el flujo de fondos (a _finish_).

Utilidad. Se relaciona con los intereses corridos.

## DM y PPV

Tenemos tres bonos. Todo valen 100. Los 3 tienen 12% de interés anual. Pero el
primero paga $10 de amortización por año. El segundo paga $ 20 por año a partir
del sexto año. El terceo paga $ 100 al final.

El primero tiene una TIR del 12. La Duration Mod (DM) mide la sensibilidad el
precio frente al cambio del 1% en la TIR. Si la TIR se mueve 1%, el precio se
mueve 3.62%. El PPV es el promedio ponderado de vida del bono. La fórmula está
en el Excel.

# Decisiones

Se toman considerando todos los indicadores. No hay uno solo que permita tomar
decisiones.

# Must Know

## Tasa Libor

La **LIBOR** (_London InterBank Offered Rate_, tipo interbancario de oferta de
Londres), es una tasa de referencia diaria basada en las tasas de interés a la
cual los bancos ofrecen fondos _no_ asegurados a otros bancos en el mercado
monetario mayorista o interbancario.

## BADLAR

Tasa de interés de plazos fijos a 30 días mayores de millón de pesos.
Instrumentos se pueden especificar en BADLAR + 2% por ejemplo.

# Tipos de bonos

## Bonos Tasa Fija

**Hard Dollar**. Cotizan en pesos, dólares, dólares cable. Bonos soberanos. Nos
enfocamos en los de mayor volumen: AL30 y GD30.

En el ticker, los dos últimos números señalan el año de vencimiento. Las dos 
letras señalan la legislación: AL local, GD internacional.

Como son reestructurados, no quitaron capital, pero pagan un interés muy chico.

**Bonos Tasa Fija en Pesos**. Bonos del tesoro nacional. Pagan tasa fija en
pesos. Por eso el precio, con inflación creciente, se cae. El mercado regula lo
que no regulan las condiciones.

**Obligaciones negociables en dólares y en pesos**. Se puede comprar la mayoría
de instrumentos en pesos o dólares. Pero se va a pagar en dólares. En el 
secundario la puedo vender en pesos.

Algunos BROKER muestran buena información, como Rava, pero no todos.

**Bonos CER**. Son los TX. Pagan tasas fijas en pesos sobre saldo de capital.
Salen con valor nominal 100 y acumulan capital en pesos. CER es un coeficiente
que se actualiza todos los días. El bono sigue ese coeficiente. Rinden CER + un
interés.

**Bono Dollar Linked**. Protegen frente a una devaluación. Suelen pagar poco y 
nada de interés. Ejemplo: bono de IRSA. Rendía al 4% anual. Precio dólar oficial
más un interés. También puede rendir negativo.

# Curva de bonos

En el eje X tenemos los plazos. En el eje Y tenemos la tasa. Una curva normal 
va incrementando lentamente.

Si tengo una curva plana muestra incerteza. Rendimientos parejos hoy y a futuro.

Una curva invertida tiene rendimientos altos al principio y bajos al final. El 
presente es malo, pero el futuro mejora (pido menos retorno a futuro).

# Riesgo país

Representa cuántos basic points rinde un país por encima de la tasa de riesgo. 
Es un número simple que expresa el _riesgo de invertir en un país_. Por ejemplo,
1600 puntos de riesgo país, con TNX del 1%, significa rendimiento del 17%.

# Dólar oficial

El BCRA es comprador y vendedor: todos venden al BCRA y el BCRA vende a los que
pueden comprar.

# Dólar MEP

Tantos Bonos como ON cotizan en dólares o pesos. El mismo bono se puede comprar 
con cualquiera de las dos monedas. AL30 o AL30D sirve para diferenciar la
moneda.  Pero el activo es el mismo. MEP significa Mercado Electrónico de Pagos.
Para cada instrumento hay un dólar MEP: cada instrumento tiene un precio en
pesos y en dólares. El mercado va arbitrando. Puedo comprar un instrumento a un 
precio en pesos y venderlo a un precio en dólares. Hay un tipo de cambio
implícito en esa operación. No hay monto y no hay cupo límite.

# Dólar CCL

Tantos bonos como ON cotizan también en dólares en el exterior. Ejemplo, AL30C. 
Contado con liquidación representa cuánto cuesta sacar un dólar del país. Se 
compra un activo en pesos y se vende en dólares en EEUU. 

El canje es: $C = \frac{D_{MEP}}{D_{CCL}} - 1$. 

Que sea cable quiere decir que se puede girar a IBKR o AmeriTrade.

# Dólar Futuro

Compro pesos a futuro atados al valor del dólar. Pero a un precio ya
determinado. El gobierno puede dejar que corra o ponerse como oferente para 
frenar un crecimiento del precio.

```c
// Quedo en 2H11M
```
