//
//  CategoriesView.swift
//  foody
//
//  Created by pavan naik on 12/01/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink{
                        ScrollView {
                            RecipeList(recipes: Recipe.all.filter{$0.category == category.rawValue})
                        }
                    } label: {
                        Text(category.rawValue+"s")
                    }
                }
            }
            Text("Categories")
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
