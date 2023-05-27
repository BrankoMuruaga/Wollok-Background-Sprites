# Clases para animar fondo y personajes

**Atencion** esto es solo una prueba, prbablemente necesite mejorar 

## Animar fondo

Dentro del archivo *"background.wlk"* se encuentra la clase *"Background"*. 
Esta clase desplasa la imagen pasada de derecha a izquierda con la velocidad indicada, este debe ser un numero entero (se recomienda ir probando las diferentes velocidades)

Esta clase recive dos parametros

- **image**: Un string - La imagen de fondo
- **Velocidad**: Un numero - La velcidad con la que se movera el fondo

>const fondo = new Background( image = "fondo.png", velocidad = 3 )

![fondo muestra](Assets/fondMuestra.gif)

___

## Animar personaje

Dentro de *"character.wlk"* se encuentra la clase *"CharacterAnimado"*.
Esta clase toma tres argumentos

- **images**: Un array (lista) - Este debe contener imagenes (sprites) del personaje que se desea animar en el orden en el que pasara la animacion

    `const sprites = ["sprite1.png","sprite2.png","sprite3.png","sprite4.png","sprite5.png"]`
- **Personaje**: Un objeto posicionable - Este debe ser un objeto con los atributos *"image"* y *"position"* tal como lo pide Wollok game 

    ` object personaje {
   var property image
   var property position
 }`

 - *opcional* **velocidad**: Un numero - Inicializada en 50. Este refiere a la velocidad en la que pasaran las imagenes.

> var personajeAnimado = new CharacterAnimado(
			images = sprites, 
			personaje = soldado,
			velocidad = 250
		)

![Personaje animado muestra](Assets/personajeAnimadoMuestra.gif)



