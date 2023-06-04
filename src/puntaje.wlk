import wollok.game.*

/*Para que funcione: 
 * Se debe tener en la carpeta Assets imagenes de numeros con el nombre "1.png", "2,png", etc
 * Se debe llamar al objeto puntaje, y a su metodo "agregarPuntaje()" pasandole como parametro el numero a dibujar
 * Si se quiere cambiar el numero en tiempo de ejecucion se debe llamar al metodo "removerPuntaje()" para borrar el numero
 * Ej: 
 * var contador = 0
		
	game.onTick(100 ,"puntaje", {
		puntaje.removerPuntaje()
		puntaje.agregarPuntaje(contador)
		contador++
	})
 * 
 * Si se quiere cambiar la posicion se llama al metodo "position()" y se le pasa una nueva posicion
 */

object puntaje {
	var property position = game.at(0,0)
	const puntaje = []
	const espaciadoEntreNumeros = 23
	
	method agregarPuntaje(unNumero){
		puntaje.clear()		
		var posicionAnterior = position
		const numeros = unNumero.toString().split("")
		
		numeros.forEach{n => 
			puntaje.add(new Numero(stringDenumero = n, position = posicionAnterior))
			posicionAnterior = game.at(posicionAnterior.x() + espaciadoEntreNumeros, posicionAnterior.y())
		}
		
		puntaje.forEach{n => game.addVisual(n)}
	}
	
	method removerPuntaje(){
		if(!puntaje.isEmpty()){
			
			puntaje.forEach{n =>
				game.removeVisual(n)
			} 	
			
		}
		
	}
	
	
}

class Numero{
	var stringDenumero
	var property image = self.imagenDe(stringDenumero)
	var property position 

	method imagenDe(unNumero) = unNumero + ".png"
}
