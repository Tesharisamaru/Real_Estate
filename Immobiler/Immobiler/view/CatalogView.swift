//
//  CatalogView.swift
//  Immobiler
//
//  Created by Diego Rio on 13/11/2023.
//
import SwiftUI

struct CatalogView: View {
    @StateObject var repository = HouseRepository.shared

    var body: some View {
        VStack {
            List(repository.houses) { house in
                HouseMainView(house: house)
            }
            .navigationTitle("Real Estate")
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}

