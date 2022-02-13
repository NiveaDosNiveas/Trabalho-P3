

import SwiftUI

struct batalhas: View {

    @EnvironmentObject var viewRouter: ViewRouter

    @State var Pokedex:[tipoPokemon] = [
    
        tipoPokemon(tipo: "Fogo", pokemons: [Pokemon(nome: "Charmander", img: "charmander", ataque: "Circulo de fogo", tipo: "Fogo", speed: 1), Pokemon(nome:"Cyndaquil", img:"cyndaquil", ataque: "Bola de fogo", tipo:"Fogo", speed: 1)]),
    
    
        tipoPokemon(tipo: "Agua", pokemons: [Pokemon(nome: "Squirtle", img: "squirtle", ataque: "Canhao de agua", tipo: "Agua",speed: 1),
                                             Pokemon(nome: "Totodile", img: "totodile", ataque: "Jato de agua", tipo: "Agua",speed: 1)]),
    
        tipoPokemon(tipo: "Erva", pokemons: [Pokemon(nome: "Bulbasaur", img: "bulbasaur", ataque: "Weed", tipo: "Erva", speed: 1), Pokemon(nome: "Chikorita", img: "chikorita", ataque: "Chicote de erva", tipo: "Erva", speed: 1)]),

    ]
    
var body: some View {

     List(){

         ForEach(Pokedex){ Npokemon in

                
                    ForEach(Npokemon.pokemons){ pokemon in
                        NavigationLink {
                            pokedetalhesbat(pokemon: pokemon, pokemonAdver: self.Pokedex.randomElement()!.pokemons.randomElement()!)
                        }label: {
                            ListLine(pokemon: pokemon)
                        }
                    }
                    
                
        }
           
            
        }.navigationTitle("Selecione um pokemon")
        
        .toolbar {
                        //EditButton()
                    }
    
        
}
}

struct batalhas_Previews: PreviewProvider {
    static var previews: some View {
        batalhas().environmentObject(ViewRouter())
    }
}
