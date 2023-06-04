import wollok.game.*

class Personaje {
	var property sprites = self.spritesIniciales()
	var property position = game.origin()
	var property image = sprites.first()
	
	var property velocidadDeSprite = 50
	
	var personaje = new CharacterAnimado(
						personaje = self, 
						images = sprites,
						velocidad = velocidadDeSprite
	)
	/*Metodo abstracto*/
	
	method spritesIniciales()
	
	/*------------------------------------------------------*/
	method iniciar(){
		game.addVisual(personaje)
		personaje.animar()
	}
	
	method detener(){
		game.removeTickEvent("characterAnimate")
		game.removeVisual(personaje)
	}
	
	method cambiarSprite(unSprite){
		/*
		 *Proposito:  Cambia el sprite actual por *unSprite*, pasando las imagenes de manera continua.
		 *Parametros:	
		 *  		  unSprite: una lista - Los sprites a pasar.
		 */
		 
			self.detener()
			personaje = new CharacterAnimado(
						personaje = self, 
						images = unSprite,
						velocidad = velocidadDeSprite
			)
			self.iniciar()
	}
	
	method cambiarSpriteUnaVez(unSprite){
		/*
		 *Proposito:  Cambia el sprite actual por *unSprite*, pasando las imagenes continuamente
		 * 			  y dejando la ultima de manera constante.
		 *Parametros: 
		 * 			  unSprite: una lista - Los sprites a pasar.
		 */
		 
		const duracionDelSprite = personaje.velocidad() * unSprite.size()
		self.cambiarSprite(unSprite)
		
		game.schedule(duracionDelSprite, {
			self.detener()
			image = unSprite.last()
			game.addVisual(self)
		})
	}
	
	method cambiarSpriteDe_A_(spriteAPasar, spriteSiguiente){
		/*
		 *Proposito:  Cambia el sprite actual por *spriteAPasar* hasta el final del mismo y luego pasa el sprite *spriteSiguiente* 
		 * 			  para dejarlo de manera constante.
		 *Parametros: 
		 * 			  spriteAPasar: una lista - Los sprites a pasar una sola vez antes de pasar a *spriteSiguiente*.
		 * 			  spriteSiguiente: una lista - Los sprites a pasar de manera constante luego de pasar *spriteAPasar*.
		 */
		 
		const duracionDelSprite = personaje.velocidad() * spriteAPasar.size()
		
		self.cambiarSprite(spriteAPasar)
		
		game.schedule(duracionDelSprite, {self.cambiarSprite(spriteSiguiente)})
	}
}


/* la instancia de CharacterAnimado equivale al personaje pasado argumento del parametro "personaje" al momento de instanciarla
 * pero la imagen va iterando en las imagenes pasadas como argumento del parametro "images".
 * Se debe usar la instancia misma en el "game.addVisual()"
 */


class CharacterAnimado {
	const property images
	var personaje
	const property velocidad = 50
	
	method position() = personaje.position()
	
	method position(unaPosicion){
		personaje.position(unaPosicion)
	}
	
	method image() = personaje.image()
	
	method image(unaImagen){
		personaje.image(unaImagen)
	}
	
	method animar(){
		self.image(images.first())
		game.onTick(velocidad, "characterAnimate", {self.image(self.pasarSprite())})
	}
	
	method pasarSprite(){
		const indexImg = (0.. images.size()-1)
		var index = indexImg.find{i => images.get(i) == self.image()}
		index++
		return images.get(index % images.size())
		}
			
}



	
	

