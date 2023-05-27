import wollok.game.*
import character.*
import controles.*


/* Para funcionar bien en conjunto con la clase "CharacterAnimado", se debe crear el objeto con
 * los atributos "accionActual", "image" y "position", inicializar la posicion inicial, y la accion actual, 
 * esta segunda con una instancia de "CharacterAnimado". No hace falta inicializar la imagen
 * esta se inicializa con el primer elemento de la lista enviada en el atributo "images" de la instancia de "accionActual".
 * 
 * En el metodo "Iniciar" agregar la visual "AccionActual", e iniciar la animacion con el metodo "accionActual.animar()"
 * 
 * Recordar que luego de modificar el valor de "accionActual" se debe volver a enviar el mensaje "accionActual.animar()"
 */

object soldado {
	var property position = game.origin()
	var property image
	
	
	const spritesCorrer = ["k1.png","k2.png","k3.png","k4.png","k5.png","k6.png","k7.png","k8.png"]
	const spritesParado = ["i1.png","i2.png"]
	const spritesAtaque = ["a1.png","a2.png","a3.png","a4.png","a5.png","a6.png","a7.png","a8.png","a9.png","a10.png","a11.png","a12.png","a13.png"]
	
	var accionActual = new CharacterAnimado(
			images = spritesParado, 
			personaje = self,
			velocidad = 250
		)
	
	method iniciar(){
		game.addVisual(accionActual)
		accionActual.animar()
		
		controles.iniciarControles()
		
	}
	
	method correr(){
		accionActual = new CharacterAnimado(
			images = spritesCorrer, 
			personaje = self
		)
		accionActual.animar()
	}
	
	method pararse(){
		accionActual = new CharacterAnimado(
			images = spritesParado, 
			personaje = self,
			velocidad = 250
		)
		accionActual.animar()
	}
	
	method atacar(){
		accionActual = new CharacterAnimado(
			images = spritesAtaque, 
			personaje = self
		)
		accionActual.animar()
	}
}