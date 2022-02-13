

import SwiftUI

struct viewbatalhas: View {
    @State var pokemon:Pokemon
    @State var pokemonAdver:Pokemon
    @State var bat:fBatalhas = fBatalhas()
    @State private var showingwAlert = false
    @State private var showinglAlert = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack{
        VStack{
            
                
            HStack{
                
                HStack(alignment: .bottom){
                    Group{
                        Image(uiImage: pokemonAdver.img)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 300)
                            .padding(.leading, 50)
                            
                    }
                    Spacer()
                }.frame(width: 200, height: 200, alignment: .center)
                
                HStack{
                        VStack(alignment: .center){
                            Group{
                            Text(pokemonAdver.nome)
                               
                                    
                                ProgressView(value: self.pokemonAdver.hp, total:self.pokemonAdver.currhp)
                                {
                                   Text("HP: \(pokemonAdver.hp, specifier:"%.0f")")
                               }
                                .progressViewStyle(.linear)
                                .frame(width: 100)
                                

                            }
                        }.frame(alignment: .leading)
                    Spacer()
                }
                .frame(width: 120,height: 100, alignment: .center)

                Spacer()
            
            }
            Spacer()
        HStack{
            
            HStack(alignment: .bottom){
                Group{
                    Image(uiImage: pokemon.img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 300)
                        .padding(.leading, 50)
                        
                }
                Spacer()
            }.frame(width: 200, height: 200, alignment: .center)
            
            HStack{
                    VStack(alignment: .center){
                        Group{
                        Text(pokemon.nome)
                            ProgressView(value: self.pokemon.hp, total: self.pokemon.currhp)
                            {
                               Text("HP: \(pokemon.hp, specifier:"%.0f")")
                           }
                            .progressViewStyle(.linear)
                            .frame(width: 100)
                            
                            Button {
                                
                                
                                if (self.pokemon.hp >= 1 && self.pokemonAdver.hp >= 1 ){
                                    bat.funcataque(pokemon: &self.pokemon, pokemonAdver: &self.pokemonAdver)
                                }/*else{
                                   
                                }
                                
                                  if (self.pokemon.hp <= 0 && self.pokemonAdver.hp > 0) {
                                    showingAlert = true
                                }else if (self.pokemon.hp > 0 && self.pokemonAdver.hp <= 0){
                                    showingAlert = true
                                }*/
                                if (self.pokemon.hp <= 0 || self.pokemonAdver.hp <= 0){
                                    if (self.pokemon.hp < self.pokemonAdver.hp){
                                        self.pokemon.hp = 0
                                        self.pokemonAdver.hp = 1
                                        showinglAlert = true
                                    }
                                    else{
                                        self.pokemon.hp = 1
                                        self.pokemonAdver.hp = 0
                                        showingwAlert = true
                                    }
                                    
                                 }

                                
                            } label: {
                                Text(pokemon.ataque)
                            }
                        }
                        .alert(isPresented: $showingwAlert) {
                            Alert(title: Text("Ganhou"), message: Text("Parabéns"), dismissButton: .default(Text("Batalhas")) {
                               
                                self.pokemon.hp = self.pokemon.currhp
                                self.presentationMode.wrappedValue.dismiss()
                                self.presentationMode.wrappedValue.dismiss()
                            } )
                        }
                        Button(" "){
                            
                        }  .alert(isPresented: $showinglAlert) {
                            Alert(title: Text("Perdeu"), message: Text("Tenta outra vez"), dismissButton: .default(Text("Batalhas")) {
                               
                                self.pokemon.hp = self.pokemon.currhp
                                self.presentationMode.wrappedValue.dismiss()
                                self.presentationMode.wrappedValue.dismiss()
                            } )
                        }

                           
    
                    }.frame(alignment: .leading)
                    .navigationBarHidden(true)
                Spacer()
                
            }
            .frame(width: 120,height: 100, alignment: .center)
            Spacer()
        }

        
        }
        .background(Image("backgroundbatalha"))
        .edgesIgnoringSafeArea([.top,.bottom])
    }
    }
    
}

struct viewbatalhas_Previews: PreviewProvider {
    static var previews: some View {
        viewbatalhas(pokemon: Pokemon(nome: "Charmander",
                                      img: "charmander",ataque: "bola de fogo", tipo:"fogo", speed: 1), pokemonAdver: Pokemon(nome: "Bulbasaur", img:"bulbasaur", ataque: "chicote de erva", tipo:"erva", speed: 1))
    }
}
