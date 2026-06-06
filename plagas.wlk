import elementos.*
class Plaga{
    var poblacion

    method transmiteEnfermedad() = poblacion >= 10
    method nivelDeDaño()
    method realizarAtaque(unElemento){
        unElemento.recibirAtaqueDe(self)
        self.efectosDeAtacar()
    }
    method efectosDeAtacar(){
        poblacion += poblacion*0.1
    }
}
class Cucarachas inherits Plaga{
    var pesoPromedioPorBicho

    override method nivelDeDaño() = (poblacion/2)
    override method transmiteEnfermedad() = super() && (pesoPromedioPorBicho>=10)
    override method efectosDeAtacar(){
        pesoPromedioPorBicho += 2
    }
}
class Mosquitos inherits Plaga{
    override method nivelDeDaño() = poblacion
    override method transmiteEnfermedad() = poblacion%3 == 0
}
class Pulgas inherits Plaga{
    override method nivelDeDaño() = poblacion*2
}
class Garrapatas inherits Pulgas{
    override method efectosDeAtacar(){
        poblacion += poblacion*0.2
    }
}