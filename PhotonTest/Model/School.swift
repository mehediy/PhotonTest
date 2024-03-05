//
//  School.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import Foundation

struct School: Codable, Identifiable {
    
    var id = UUID()
    
    let name: String
    let dbn: String
    
    let address: String
    let city: String
    let state: String
    let zip: String
    
    let email: String?
    let phone: String?
    let website: String?
    
    let overview: String?
    let sports: String?
    
    enum CodingKeys: String, CodingKey {
        
        case name = "school_name"
        case dbn = "dbn"
        
        case address = "primary_address_line_1"
        case city = "city"
        case state = "state_code"
        case zip = "zip"
        
        case email = "school_email"
        case phone = "phone_number"
        case website = "website"
        
        case overview = "overview_paragraph"
        case sports = "school_sports"
    }
}
