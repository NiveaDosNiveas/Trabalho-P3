

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        

        
        NavigationView{
            VStack{
            Image("Pokebola")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400, alignment: .top)
            
            List{
                
                NavigationLink{
                     batalhas()
                    
                } label: {
                            HStack{
                                Image(systemName:"list.bullet")
                                Text("Batalhas")
                                    .font(.system(size:20))
                                    .foregroundColor(Color("RedColor"))
                            }
                        }
                    .frame(width: 300.0, height: 50.0)
                
                NavigationLink{
                    listpokedex()
                }  label: {
                            HStack{
                                Image(systemName:"list.bullet")
                                Text("Pokedex")
                                    .font(.system(size:20))
                                    .foregroundColor(Color("RedColor"))
                            }
                        }.frame(width: 300.0, height: 50.0)
                    .navigationTitle("Menu")
                    .navigationBarHidden(true)
            }
          
            
        }
        .padding(.top)    }
}
} 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
