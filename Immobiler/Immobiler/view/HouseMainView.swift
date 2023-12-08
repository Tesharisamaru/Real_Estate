//
//  HouseMainView.swift
//  Immobiler
//
//  Created by Diego Rio on 13/11/2023.
//

import SwiftUI

struct HouseMainView: View {
    @Binding var house : House
    var body: some View {
        NavigationLink(destination: CaractView(house:$house)) {
            HStack{
                Image(house.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)

                VStack{
                    Text("Property \(house.numb)")
                        .font(.title2)
                        .frame(maxWidth: .infinity,
                        alignment: .leading)
                    
                    VStack{
                        Text("\(house.type) \(house.rooms) rooms")
                            .fontWeight(.light)
                            .frame(maxWidth: .infinity,
                            alignment: .leading)
                        Text("€\(house.price)")
                            .fontWeight(.light)
                            .frame(maxWidth: .infinity,
                            alignment: .leading)
                    }
                }
            }
        }
    }
}

struct HouseMainView_Previews: PreviewProvider {
    static var previews: some View {
        HouseMainView(house : .constant(House(numb:1, type: "Appartment",rooms:4,price:100000,image: "appartement1"))).previewLayout(.sizeThatFits)
    }
}
