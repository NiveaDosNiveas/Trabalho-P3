import Foundation
struct fBatalhas{

    mutating func funcataque(pokemon: inout Pokemon, pokemonAdver: inout Pokemon){

        
        let TFraco:Float = -0.03
        let TForte:Float = 0.03
        let TNeutro:Float = 0.00
        
        
        //atk = atak + (atak*(tipo))
        if (pokemon.tipo == "Fogo" && pokemonAdver.tipo == "Erva"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TForte)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TFraco)
        }else if(pokemon.tipo == "Fogo" && pokemonAdver.tipo == "Agua"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TFraco)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TForte)
        }else if (pokemon.tipo == "Erva" && pokemonAdver.tipo == "Agua"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TForte)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TFraco)
        }else if(pokemon.tipo == "Erva" && pokemonAdver.tipo == "Fogo"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TFraco)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TForte)
        }else if (pokemon.tipo == "Agua" && pokemonAdver.tipo == "Erva"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TFraco)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TForte)
        }else if(pokemon.tipo == "Agua" && pokemonAdver.tipo == "Fogo"){
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TForte)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TFraco)
        }else {
            pokemonAdver.hp = pokemonAdver.hp - (Float(pokemon.atk) + Float(pokemon.atk) * TNeutro)
            pokemon.hp = pokemon.hp - (Float(pokemonAdver.atk) + Float(pokemonAdver.atk) * TNeutro)
        }
        
        
    }
}

