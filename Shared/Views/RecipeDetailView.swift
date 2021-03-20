//
//  RecipeDetailView.swift
//  Pecipe List App
//
//  Created by Dev Doshi on 19.03.21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            VStack(alignment:.leading){
                
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                
                //MARK: Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                
                    ForEach(recipe.ingredients, id:\.self){ item in
                        Text("⦁ " + item)
                    }
                }
                .padding(.horizontal)
                
                //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 2)
                    
                    }
                }
                .padding(.horizontal)
            }
        }.navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
