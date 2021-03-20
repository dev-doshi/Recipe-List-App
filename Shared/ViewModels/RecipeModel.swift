//
//  RecipeModel.swift
//  Pecipe List App (iOS)
//
//  Created by Dev Doshi on 27.02.21.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init(){
        
         //Create instance of data service and get the data
        self.recipes = DataService.getLocalData()

        
    }
    
}
