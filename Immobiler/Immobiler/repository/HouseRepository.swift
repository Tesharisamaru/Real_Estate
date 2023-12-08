//
//  HouseRepository.swift
//  Immobiler
//
//  Created by Diego Rio on 13/11/2023.
//

import Foundation
import Combine

class HouseRepository : ObservableObject{
    static let shared = HouseRepository()
    
    @Published var houses = [
        House(numb: 1234,type:"Appartment", rooms:4, price:100000,image:"appartement1"),
        House(numb: 543,type:"Appartment", rooms:5, price:100000,image:"appartement2" ),
        House(numb: 7890,type:"House", rooms:7, price:300000,image:"maison1"),
        House(numb: 456,type:"House", rooms:4, price:120000,image:"maison2" ),
        House(numb: 876,type:"House", rooms:5, price:140000,image:"maison3"),
        
        
    ]
    
}
