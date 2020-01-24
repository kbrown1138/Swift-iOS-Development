//
//  Registration.swift
//  HotelManzana
//
//  Created by ManhattanProject on 8/29/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
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
