//
//  SettingsView.swift
//  foody
//
//  Created by pavan naik on 12/01/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("V1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
