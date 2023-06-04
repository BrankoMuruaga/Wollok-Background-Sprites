import wollok.game.*
import background.*

object fondo {
	
	var property velocidad = 1
	const montaniasFondo = new Background(image = "parallax-mountain-montain-far.png", velocidad = 3 * velocidad)
	const montanias = new Background(image = "parallax-mountain-mountains.png", velocidad = 5 * velocidad)
	const arboles = new Background(image = "parallax-mountain-trees.png", velocidad = 7 * velocidad)
	const pinos = new Background(image = "parallax-mountain-foreground-trees.png", velocidad = 9 * velocidad)
	
	/*En  "cantDeFondos" se debe indicar la cantidad de instancias de "Background" que existen*/
	const cantDeFondos = 4
	var cantDetenidos = 0	
	

	method iniciar(){
		game.boardGround("parallax-mountain-bg.png")
		montaniasFondo.iniciar()
		montanias.iniciar()
		arboles.iniciar()
		pinos.iniciar()
	}
	
	method detenerFondo(){
		if(cantDetenidos != cantDeFondos){
			game.removeTickEvent("background")
			cantDetenidos++
			self.detenerFondo()	
		}
	}
}
