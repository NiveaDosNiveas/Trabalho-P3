

import SwiftUI

struct pokeDetalhes: View {
    @State var pokemon:Pokemon
    var body: some View {
       
        VStack{
            HStack{
                Group{
                    Image(uiImage: pokemon.img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 300, alignment: .center)
                        .padding(.leading, 50)

                }.frame(width: 340, height: 300, alignment: .center)
                Spacer()
            }
            HStack{
                    VStack(alignment: .center){
                        Group{

                            Text(pokemon.nome).font(.system(size: 25, weight: .heavy, design: .default))
                                .frame(width: 160, height: 45, alignment: .center)
                            
                            Text("Ataque: ").font(.system(size: 19, weight: .heavy,   design: .default)) + Text("\(pokemon.atk)")
                            Text("Defesa: ").font(.system(size: 19, weight: .heavy,   design: .default)) + Text("\(pokemon.def)")
                            Text("HP: ").font(.system(size: 19, weight: .heavy,   design: .default)) + Text("\(pokemon.hp, specifier:"%.0f")")
                            Text("Ataque:").font(.system(size: 19, weight: .heavy,   design: .default))
                            Text("\(pokemon.ataque)").font(.system(size: 19,  design: .default))
                            
                            ProgressView(value: Float(pokemon.xp), total: 100.0)
                            {
                               Text("To Evolve:")
                                    .font(.system(size: 18, weight: .heavy,  design: .default))
                           }
                                .progressViewStyle(.linear)
                                .frame(width: 100)

                        }.padding(.bottom,1)
                            .frame(width: 140  , height: 35, alignment: .leading)
                        
                            
                    }.frame(alignment: .leading)
                    
                
                Spacer()
                
            }
            .frame(width: 100,height: 100, alignment: .center)
            
            Spacer()
            
        }
        .navigationTitle(self.pokemon.nome)
        
        
        
        
        
        
    }
}

struct pokeDetalhes_Previews: PreviewProvider {
    static var previews: some View {
        pokeDetalhes(pokemon: Pokemon(nome: "Charmander",
                                      img: "charmander",ataque: "bola de fogo", tipo:"fogo", speed: 1))
    }
}
