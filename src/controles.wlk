import wollok.game.*
import background.*
import character.*
import soldado.*
import fondo.*

object controles {
	method iniciarControles(){
		keyboard.right().onPressDo{
			try{
				game.removeTickEvent("characteAnimate")
				soldado.correr()
			} catch e {
				soldado.correr()
			}
				
		}
		
		keyboard.left().onPressDo{
			try{
				game.removeTickEvent("characteAnimate")
				soldado.pararse()		
			} catch e {
				soldado.pararse()
			}
		}
		
		keyboard.space().onPressDo{
			try{
				game.removeTickEvent("characteAnimate")
				soldado.atacar()			
			} catch e {
				soldado.atacar()
			}
		}
	}
	
}
