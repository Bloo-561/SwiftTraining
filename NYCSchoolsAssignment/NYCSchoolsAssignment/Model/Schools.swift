//
//  Schools.swift
//  NYCSchoolsAssignment
//
//  Created by Elvis on 9/8/23.
//

import Foundation

struct School: Decodable {
    
    var dbn : String?
    var schoolName : String?
    var phoneNumber : String?
    var faxNumber : String?
    var schoolEmail : String?
    var website : String?
    var totalStudents : String?
    var primaryAddressLine1 : String?
    var city : String?
    var zip : String?
    var stateCode : String?
    
    enum CodingKeys: String, CodingKey {
        case dbn = "dbn"
        case schoolName = "school_name"
        case phoneNumber = "phone_number"
        case faxNumber = "fax_number"
        case schoolEmail = "school_email"
        case website = "website"
        case totalStudents = "total_Students"
        case primaryAddressLine1 = "primary_address_line_1"
        case city = "city"
        case zip = "zip"
        case stateCode = "state_code"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dbn = try container.decodeIfPresent(String.self, forKey: .dbn)
        self.schoolName = try container.decodeIfPresent(String.self, forKey: .schoolName)
        self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        self.faxNumber = try container.decodeIfPresent(String.self, forKey: .faxNumber)
        self.schoolEmail = try container.decodeIfPresent(String.self, forKey: .schoolEmail)
        self.website = try container.decodeIfPresent(String.self, forKey: .website)
        self.totalStudents = try container.decodeIfPresent(String.self, forKey: .totalStudents)
        self.primaryAddressLine1 = try container.decodeIfPresent(String.self, forKey: .primaryAddressLine1)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.zip = try container.decodeIfPresent(String.self, forKey: .zip)
        self.stateCode = try container.decodeIfPresent(String.self, forKey: .stateCode)
    }
    
}

typealias Schools = [School]
