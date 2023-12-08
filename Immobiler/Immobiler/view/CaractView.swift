//
//  CaractView.swift
//  Immobiler
//
//  Created by Diego Rio on 20/11/2023.
//

import SwiftUI

struct CaractView: View {
    @Binding var house: House

    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Types:")
                        .foregroundColor(.secondary)
                    Picker("", selection: $house.type) {
                        Text("Appartement").tag("Appartement")
                        Text("House").tag("House")
                    }.foregroundColor(.black)
                }
            }

            Section {
                HStack {
                    Text("Rooms:")
                        .foregroundColor(.secondary)
                    TextField("", value: $house.rooms, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                }

                HStack {
                    Text("Price:")
                        .foregroundColor(.secondary)
                    TextField("", value: $house.price, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                }
            }

            Section {
                Image(house.image)
                    .resizable()
                    .scaledToFit()
            }
        }
        .navigationTitle("Property \(house.numb)")
    }
}



struct CaractView_Previews: PreviewProvider {
    static var previews: some View {
        CaractView(house : .constant(House(numb:1, type: "Appartment",rooms:4,price:100000,image: "appartement1"))).previewLayout(.sizeThatFits)
    }
}
