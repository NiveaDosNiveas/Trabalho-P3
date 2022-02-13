import Foundation

class tipoPokemon:Identifiable{
    
    var id = UUID()
    
    var tipo:String
    var pokemons:[Pokemon]
    
    
    init(tipo:String, pokemons:[Pokemon]){
        
        self.tipo = tipo
        self.pokemons = pokemons
        
        
    }
    
    
}
