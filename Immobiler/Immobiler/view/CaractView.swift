//
//  CaractView.swift
//  Immobiler
//
//  Created by Diego Rio on 20/11/2023.
//

import SwiftUI

struct CaractView: View {
    @State var house : House
    var body: some View {
        VStack{
            Picker("Type", selection: $house.type){
                Text("Appartement").tag("Appartement")
                Text("House").tag("House")
            }
            Section(header: Text("Rooms").font(.headline)) {
                TextField("Rooms",
                          value: $house.rooms,
                          format: .number
                ).keyboardType(.decimalPad)
            }.frame(maxWidth: .infinity,
                     alignment: .leading)
            
            Section(header: Text("Price").font(.headline)) {
                TextField("Price",
                          value: $house.price,
                          format: .number
                ).keyboardType(.decimalPad)
            }.frame(maxWidth: .infinity,
                    alignment: .leading)
            
            Image(house.image)
                .resizable()
                .scaledToFit()
            
            
        }.navigationTitle("Property \(house.numb)")
    }
}


struct CaractView_Previews: PreviewProvider {
    static var previews: some View {
        CaractView(house : House(numb:1, type: "Appartment",rooms:4,price:100000,image: "appartement1")).previewLayout(.sizeThatFits)
    }
}
