import wollok.game.*
import personaje.*
import fondo.*
import controles.*

object config {
	
	method iniciar(){
		game.title("sprite test")
		game.cellSize(1)
		game.width(540)
		game.height(300)
		
		controles.iniciarControles()
		
		fondo.iniciar()
		
		personajeActual.personaje().iniciar()
	}
	
}

