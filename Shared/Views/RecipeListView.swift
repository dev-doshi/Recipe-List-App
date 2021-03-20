//
//  ContentView.swift
//  Shared
//
//  Created by Dev Doshi on 19.02.21.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes){ r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        
                        //MARK: Row Item
                        HStack(spacing: 25.0){
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height:50, alignment:.center)
                                .clipped()
                                .cornerRadius(10)
                            Text(r.name)
                                .font(.headline)
                                .fontWeight(.medium)
                        }
                    })
                
            }.navigationTitle("Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
