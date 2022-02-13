

import SwiftUI

struct listpokedex: View {

    @EnvironmentObject var viewRouter: ViewRouter

    @State var Pokedex:[tipoPokemon] = [
    
        tipoPokemon(tipo: "Fogo", pokemons: [Pokemon(nome: "Charmander", img: "charmander", ataque: "Circulo de fogo", tipo: "Fogo", speed: 8), Pokemon(nome:"Cyndaquil", img:"cyndaquil", ataque: "Bola de fogo", tipo:"Fogo",speed: 6)]),
    
    
        tipoPokemon(tipo: "Agua", pokemons: [Pokemon(nome: "Squirtle", img: "squirtle", ataque: "Canhao de agua", tipo: "Agua", speed: 7),
                                             Pokemon(nome: "Totodile", img: "totodile", ataque: "Jato de agua", tipo: "Agua", speed: 9)]),
    
        tipoPokemon(tipo: "Erva", pokemons: [Pokemon(nome: "Bulbasaur", img: "bulbasaur", ataque: "Weed", tipo: "Erva", speed: 4), Pokemon(nome: "Chikorita", img: "chikorita", ataque: "Chicote de erva", tipo: "Erva", speed: 3)]),

    ]

var body: some View {
        List{


            
            ForEach(Pokedex){ tipo in

                Section {
                    ForEach(tipo.pokemons){ pokemon in
                        NavigationLink {
                            pokeDetalhes(pokemon: pokemon)
                        } label: {
                            ListLine(pokemon: pokemon)
                        }
                    }
                    
                } header: {
                    Text(tipo.tipo)
                    
                    
                }
        }
           
            
        }.navigationTitle("Pokedex")
}
}

struct listpokedex_Previews: PreviewProvider {
    static var previews: some View {
        listpokedex().environmentObject(ViewRouter())
    }
}
