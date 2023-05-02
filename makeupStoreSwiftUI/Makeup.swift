//
//  Makeup.swift
//  makeupStoreSwiftUI
//
//  Created by Vania Alfitri on 02/05/2023.
//

import Foundation

enum ProductType: String, Codable {
    case lipstick = "lipstick"
    case lipLiner = "lip_liner"
    case foundation = "foundation"
    case eyeLiner = "eyeliner"
    case eyeShadow = "eyeshadow"
    case blush = "blush"
    case bronzer = "bronzer"
    case mascara = "mascara"
    case eyeBrow = "eyebrow"
    case nailPolish = "nail_polish"
}

struct Makeup: Codable, Equatable, Identifiable {
    var id: Int
    var brand: String?
    var productType: ProductType?
    var imageLink: String?
    var name: String
    var price: String?
    var priceSign: String?
    var description: String?
    
    private enum CodingKeys : String, CodingKey {
        case id
        case brand
        case productType = "product_type"
        case imageLink = "image_link"
        case name = "name"
        case price
        case priceSign = "price_sign"
        case description
    }
}
