import wollok.game.*
import character.*

object mago inherits Personaje{
	const spriteCorrer = ["h0.png","h1.png","h2.png","h3.png","h4.png","h5.png","h6.png","h7.png","h8.png","h9.png","h10.png","h11.png"]
	override method spritesIniciales() = spriteCorrer
	
	method correr(){}
	
	method atacar(){}
	
	method pararse(){}
	
	method morir(){}
}

object guerreroElemental inherits Personaje{
	const spriteCorrer = ["run_1.png","run_2.png","run_3.png","run_4.png","run_5.png","run_6.png","run_7.png","run_8.png"]
	
	const spriteAtacar = 
				["3_atk_1.png","3_atk_2.png","3_atk_3.png","3_atk_4.png","3_atk_5.png","3_atk_6.png","3_atk_7.png",
				"3_atk_8.png","3_atk_9.png","3_atk_10.png","3_atk_11.png","3_atk_12.png","3_atk_13.png","3_atk_14.png",
				"3_atk_15.png","3_atk_16.png","3_atk_17.png","3_atk_18.png","3_atk_19.png","3_atk_20.png"]
				
	const spriteAtaqueAereo = 
					["air_atk_1.png","air_atk_2.png","air_atk_3.png","air_atk_4.png",
					"air_atk_5.png","air_atk_6.png","air_atk_7.png","air_atk_8.png","air_atk_9.png","air_atk_10.png","air_atk_11.png"]
	
	const spriteMorir = ["death_1.png","death_2.png","death_3.png","death_4.png","death_5.png","death_6.png",
		"death_7.png","death_8.png","death_9.png","death_10.png","death_11.png","death_12.png","death_13.png"]
	
	override method spritesIniciales() = spriteCorrer
	
	override method position() = game.at(-200, -1)
	
	method correr(){
		self.cambiarSprite(spriteCorrer)
	}
	
	method atacar(){
			self.cambiarSpriteDe_A_(spriteAtacar, spriteCorrer)
	}
	
	method ataqueAereo(){
		self.cambiarSpriteDe_A_(spriteAtaqueAereo, spriteCorrer)	
	}
	
	method morir(){
		self.cambiarSpriteUnaVez(spriteMorir)
		
	}
	
	method pararse(){}
	
	
}

object soldado inherits Personaje {
	
	
	const spritesCorrer = ["k1.png","k2.png","k3.png","k4.png","k5.png","k6.png","k7.png","k8.png"]
	const spritesParado = ["i1.png","i2.png"]
	const spritesAtaque = ["a1.png","a2.png","a3.png","a4.png","a5.png","a6.png","a7.png","a8.png","a9.png","a10.png","a11.png","a12.png","a13.png"]
	
	
	override method spritesIniciales() = spritesCorrer
	
	
	method correr(){
		self.velocidadDeSprite(50)
		self.cambiarSprite(spritesCorrer)
	}
	
	method atacar(){
		self.velocidadDeSprite(50)
		self.cambiarSpriteDe_A_(spritesAtaque, spritesCorrer)
	}
	
	method pararse(){
		self.velocidadDeSprite(150)
		self.cambiarSprite(spritesParado)
	}
	
	method morir(){}
}
