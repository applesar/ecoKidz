//
//  Users.swift
//  EcoKidz
//
//  Created by admin on 2021-07-17.
//

import Foundation

struct UserRecordStructure: Codable {
    var firstName: String
    var lastName: String
    var imageName: String
    var points: Int
    var coupons: String
}

struct CouponStructure: Codable {
    var coupons: [String]
}
