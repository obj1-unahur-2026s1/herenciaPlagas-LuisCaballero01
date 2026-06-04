class Elemento{
    method esBueno()
}
class Hogar inherits Elemento{
    const nivelDeMugre
    const confortOfrecido

    override method esBueno() = nivelDeMugre*2 <= confortOfrecido
}
class Huerta inherits Elemento{
    const capacidadDeProduccion
    var nivelNoFijo
// que carajo se hará acá para que sea igual para todos.

    override method esBueno() = capacidadDeProduccion > nivelNoFijo
}
class Mascota inherits Elemento{
    const nivelDeSalud

    override method esBueno() = nivelDeSalud > 250
}
class Barrios{
    const elementos = []

    method esCopado() = self.cantidadBuenos() > self.cantidadMalos()

    method cantidadBuenos() = elementos.count({e => e.esBueno()})
    method cantidadMalos() = elementos.count({e => !e.esBueno()})
}