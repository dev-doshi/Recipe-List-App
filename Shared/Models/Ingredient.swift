//
//  Ingredients.swift
//  Pecipe List App
//
//  Created by Dev Doshi on 08.04.21.
//

import Foundation

class Ingredient: Identifiable, Decodable{
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
