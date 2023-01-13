//
//  NewRecipeView.swift
//  foody
//
//  Created by pavan naik on 12/01/23.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipies")
                .navigationTitle("New Recipies")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
