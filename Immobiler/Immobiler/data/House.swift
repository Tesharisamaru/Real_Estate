//
//  House.swift
//  Immobiler
//
//  Created by Diego Rio on 13/11/2023.
//

import Foundation

struct House : Identifiable {
    let id = UUID()
    var numb : Int
    var type : String
    var rooms : Int
    var price : Int
    var image : String = "appartement1"
}
