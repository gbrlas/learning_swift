//
//  Registration.swift
//  HotelManzana
//
//  Created by Goran Brlas on 01/10/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}
