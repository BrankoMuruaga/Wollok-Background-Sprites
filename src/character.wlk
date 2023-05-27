import wollok.game.*

/* la instancia de esta clase equivale al personaje pasado argumento del parametro "personaje" al momento de instanciarla
 * pero la imagen va iterando en las imagenes pasadas como argumento del parametro "images".
 * Se debe usar la instancia misma en el "game.addVisual()"
 */


class CharacterAnimado {
	const property images
	var personaje
	const velocidad = 50
	
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
		game.onTick(velocidad, "characteAnimate", {self.image(self.pasarSprite())})
	}
	
	method pasarSprite(){
		const indexImg = (0.. images.size()-1)
		var index = indexImg.find{i => images.get(i) == self.image()}
		index++
		return images.get(index % images.size())
		}
			
}


	
	

