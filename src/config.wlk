import wollok.game.*
import background.*
import character.*
import soldado.*
import fondo.*

object config {
	
	method iniciar(){
		game.title("sprite test")
		game.cellSize(1)
		game.width(540)
		game.height(300)
		
		fondo.iniciar()
		
		soldado.iniciar()
	}
	
}

