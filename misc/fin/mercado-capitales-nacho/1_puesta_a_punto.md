`// TIME(dan): 1:58:00`

# Módulo 1 - Puesta a punto

La idea es ir tomando notas de conceptos, frases que me quiero quedar, y sobre
todo desafíos, métricas, para programar.

*Tiempo:* el horizonte de inversión incide en el riesgo que queremos asumir. No
es lo mismo invertir a los 20 que a los 50.

A medida que crecemos, es natural que el riesgo asumido vaya bajando. El que
tiene más años puede asumir más riesgo porque el *flujo de fondos* que tenemos
por delante es distinto.

Tenemos una proyección. Esa proyección es creciente. Pero en realidad, las
subas y bajas son **cíclicas**. En el *largo plazo*, tendemos a la rentabilidad
promedio, del 6%-8% anual.

## Dedicación

*Aptitud:* Capacidad y poder. 16 horas es mucho contenido. Hay que volverlos a
ver, seguir trabajando, tomando notas, estamos *aptos para entender*. Pero lo
que tenemos que buscar es la *actitud*, que sería el paso a la acción, pasar de
la capacidad a la acción por medio de la *experiencia*. Con la teoría no
alcanza, hay que meter *práctica*. Hay que salir y armar un *portfolio de
inversión*. 

`// Idea(dan): Construir software para armar ese portfolio.`

## Paso a paso

Hay gente que compró a 100 de paridad los bonos y se quemó. Eso puede pasar,
hay que estar dispuesto a perder si queremos ganar.

Hay que ir dando pequeños pasos. No tiene sentido intentar esquivar. Jugando al
*póker*, ganamos a la larga. Aquí también. Uno puede ganar sin saber. El
problema es repetir el hábito. *Sin saber* no vamos a poder ser sistemáticos.

Aprender es una función *logarítmica*. Primero aprendemos mucho, luego durante
toda nuestra vida seguimos aprendiendo. Nunca llegamos a saber todo, porque
nadie sabe todo. Y los rendimientos son decrecientes. Pero seguimos. Por eso
vamos paso a paso.

## ¿Por qué cambian los precios todos los días?

- Oferta/demanda

- Expectativas

- Noticias

- Balances de la empresa

- Coyuntura política, social

- Macroeconomía

Netflix puede valer de un día a otro 2%. ¿Qué cambió?

# Ámbitos donde se intercambian acciones

Hay mercados. ¿Cómo emito acciones? Le pido a alguien del mercado primario que
coloque mis títulos. Es decir, es decir, en el *mercado primario*.

Una vez emitido, voy al *mercado secundario*, que es el ámbito donde se compran
y venden títulos ya emitidos.

# Tipos de mercados

Tenemos compra y venta de acciones de empresas privadas, en *BYMA*. Tiene panel
general.

Tenemos *MATBA Rofex*, derivados financieros y agrícolas. El 95% no va a operar
aquí.

Mercado Argentino de Valores, enfocado en Pymes.

Mercado Abierto Electrónico, mayorista, se opera de a bloques, aquí se opera el
dólar oficial. Si vendo 10 palos de bonos, se opera en MAE. Las grandes
operaciones de grandes fondos se hacen en MAE. Cuando hay baja liquidez en
BYMA, compran aquí y reparten en BYMA.

# Cómo nos conectamos

A través de FINTECH, Bancos y ALYC.

- Fintech: como mercado libre, nos toma plata, y opera. Nos paga dividendos por
  eso que es el rendimiento en la APP.

- Bancos: altas comisiones, no suele ser recomendable.

- ALYC: agente de liquidación y compensación, opera a nuestro nombre en el
  mercado. BYMA cobra derechos de mercado. ALYC cobra comisión por operar. Yo
  deposito en la cuenta de la ALYC y la ALYC opera a mi nombre.

Todo regulado y fiscalizado por CNV y BCRA.

# Qué es una cuenta comitente

Cuenta a nuestro nombre en la ALYC. Cuando firmamos con una ALYC, firmamos un
poder para operar por cuenta y nombre nuestro en el mercado. Cuando firmo, la
ALYC tiene un poder para operar a mi nombre.

# Con qué instrumentos

- Renta fija: sabemos de antemano cuánto vamos a ganar.

- Renta variable: no sabemos de antemano cuánto vamos a ganar

Se sabe de antemano porque el papel establece cuánto se gana y con eso podemos
calcular la rentabilidad. En renta fija se gana por el pago de cupón pero
además por la compresión de TIR, que sería que aumente el precio del
instrumento.

En renta variable gano por: apreaciación y dividendos.

# Tipos de tasa

Puede ser *nominal anual* (TNA): generalmente anual, no incluye capitalización,
por ejemplo, 30% a 360 días. Si tengo 10 luquitas, a 30 días. Divido 30 / 360.
Tengo el interés por día. Multiplico por los 30 días. Tengo el resultado de los
intereses: $ 250. 

La *tasa efectiva anual* (TEA) es cuánto rindió efectivamente la plata. Al
principio tenía 10, ¿al final como estoy? La tasa efectiva es por la diferencia
entre el capital inicial y el capital final. (Note(dan): esto es lo que tengo
que calcular para saber cómo me conviene comprar el auto.) Los instrumentos
generalmente tienen planteada una tasa nominal. La tasa efectiva la tenemos que
calcular nosotros. La diferencia entre efectiva y nominal depende de la
posibilidad de capitalizar o no los intereses.

Tasa directa (TD): refiere directamente a la proporción que representan los
intereses respecto del capital inicial.

Tasa real (TR): TEA - Inflación. Podemos calcularla con REM del Central.
Ponemos una expectativa de inflación. La tasa real es la diferencia entre el
capital incial y el final, menos el efecto de la inflación. Cuando la inflación
es igual a la tasa efectiva, empaté. Cuando la tasa efectiva es mayor a la
inflación, le gané. Esta es la métrica para saber si ganamos o no.

`// Note(dan): ¿Hay un cálculo sencillo para saber si conviene un crédito o no
respecto de la inflación?`

# VAN / TIR

- Valor actual neto: Dado un flujo de fondos y una tasa, cuál es el precio de
  un activo hoy. Cuánto pagamos hoy por $10.000 en un año. Si la tasa es 20%,
  hoy vale $8.3000. Si es 25% de tasa, hoy pago $8.000. Cuánto pago hoy por
  $10.000 en el futuro, dada una tasa. $10.000 es un año u $8.300 hoy es lo
  mismo.

  Y dentro de 2 años: $6.400. Dada una tasa, cuánto es indiferente entre hoy y
  el futuro. (Note(dan): hay que averiguar si con esto puedo saber si me
  conviene pagar de contado o en cuotas el auto).

  Con esto puedo poner un precio a un flujo futuro de fondos hoy. La fórmula me
  da el valor de hoy para una determinda cantidad de pagos.

  En EXCEL fácilmente se puede calcular esto, sobre una lista de flujo de
  fondos futuros y una tasa, con funcion `VNA()`.

- Tasa interna de retorno: A qué tasa estamos colocando sabiendo precio y flujo
  futuro.

  Un bono es una deuda. Cuando emito un bono, pongo condiciones. Cuando emito
  puedo poner un porcentaje. Pero el valor nominal puede subir. Comprime la
  tasa por valor nominal del bono. Eso es porque tengo menos riesgo. Si tengo
  más riesgo el valor nominal del bono cae. Tengo mayor tasa.

  Métrica útil para un bono en mercado secundario. Dado un riesgo que estimo,
  puedo saber si me cierra la Tasa, dado un precio y un flujo futuro.

# Posición LONG/SHORT

- Long: cuando uno compra apostando al alza.

- Short: cuando vende una posición apostando a la baja.

# Mercado BULL vs BEAR

El toro ataca para arriba. El oso ataca para abajo.

# Ticker

Letras o números (caso de bonos) con que se identifica a las empresas (bonos).

# Plazo de liquidación

Plazo en que uno opera en el mercado. Básicamente, cuándo me van a descontar el
dinero de la cuenta.

Hay tres plazos:

- T0: contado, hoy.

- T1: 24 horas, mañana.

- T2: 48 horas, en dos días.

Existen porque hace años se trabajaba en papel. Gritando en el recinto.

Se puede arbitrar.

# Caución tomadora

Pongo un activo en garantía. Mayor al capital tomado. A mayor volatilidad, más
garantía se pide.

# Caución colocadora

Funciona como un plazo fijo. Presto liquidez a una tasa. Cuando compro un
activo, hay brokers que dejan caucionar esa liquidez que está congelada hasta
que se haga efectiva la compra.

Los _brokers_ están conectados al mismo mercado. Las cajas de puntas las vemos
en BYMA. Las cajas de puntas de al caución. Nuestro intermediario es con BYMA.

# Plazo fijo

EL banco toma a una tasa y trata de colocarla más alta.

# Cheques a plazo

Hay tres:
- Avalado
- Garantizado
- Simple

La diferencia es la garantía. Avalado es SGR. Garantizado es que hay un activo
subyacente. Simple es sin garantía.

A medida que crece la garantía, cae el interés. A mayor riesgo, mayor interés.

# Letras del tesoro

Como los bonos pero plazo máximo a un año. Funcionan a descuesto: la tasa viene
dada por `FLUJO - NOMINAL`.

Ejemplo. Letra `S30J1`. Tengo días restantes. Precio nominal hoy. Valor al
cierre. `(V - P) * T_{Directa} / D_{Dias} * T_{Anual}`.

