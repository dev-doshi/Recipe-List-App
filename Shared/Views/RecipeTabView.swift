//
//  RecipeTabView.swift
//  Pecipe List App
//
//  Created by Dev Doshi on 20.03.21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            
            Text("FeaturedView")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("All Recipes")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
