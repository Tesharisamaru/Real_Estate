//
//  ImmobilerApp.swift
//  Immobiler
//
//  Created by Diego Rio on 13/11/2023.
//

import SwiftUI

@main
struct ImmobilerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                CatalogView()
            }
        }
    }
}
