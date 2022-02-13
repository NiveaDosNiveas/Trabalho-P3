
import SwiftUI

struct ListLine: View {
    @State var pokemon:Pokemon
    var body: some View {
      
        HStack{
            Image(uiImage: self.pokemon.img)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
            
            VStack{
                Text(self.pokemon.nome)
                
                
            }
            
        }
    }
}

struct ListLine_Previews: PreviewProvider {
    static var previews: some View {
        ListLine(pokemon:  Pokemon(nome: "Ditto", img: "ditto",ataque: "normal", tipo: "normal", speed: 1))
    }
}
