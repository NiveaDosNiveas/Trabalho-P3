//
//  mae.swift
//  pokedex
//
//  Created by Diogo Bravo on 17/01/2022.
//
import SwiftUI
import Foundation

enum pag {
    case page0
    case page1
    }

class ViewRouter: ObservableObject {@Published var currentPage: pag = .page0}

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
   var body: some View {
       switch viewRouter.currentPage {
       case .page0:
           ContentView()
               .transition(.scale)
       case .page1:
           listpokedex()
               .transition(.scale)
       }
   }
}


struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
