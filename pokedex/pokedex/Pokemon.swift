
import Foundation
import UIKit
import SwiftUI

struct Pokemon: Identifiable{
    
    var id = UUID()
    
    var nome:String
    var tipo:String
    //tipo
    //lvl
    var ataque:String
    var hp:Float = 100
    var currhp:Float = 100
    var atk = 15
    var def = 20
    var speed = 0
    var xp = 0
    var img:UIImage
    
    
    init(nome:String , img:String, ataque:String, tipo:String, speed:Int){
        self.nome = nome
        self.img = UIImage(named: img) ?? UIImage.defImg
        self.ataque = ataque
        self.tipo = tipo
        self.speed = speed
        
    }
    
}
