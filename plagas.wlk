class Plaga{
    const poblacion

    method transmiteEnfermedad() = poblacion >= 10
    method nivelDeDaño()
}
class Cucarachas inherits Plaga{
    const pesoPromedioPorBicho

    override method nivelDeDaño() = (poblacion/2)
    override method transmiteEnfermedad() = super() && (pesoPromedioPorBicho>=10)
}
class Mosquitos inherits Plaga{
    override method nivelDeDaño() = poblacion
    override method transmiteEnfermedad() = poblacion%3 == 0
}
class Pulgas inherits Plaga{
    override method nivelDeDaño() = poblacion*2
}
class Garrapatas inherits Pulgas{

}