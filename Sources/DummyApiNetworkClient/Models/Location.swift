//
// Location.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Location: Codable { 


    public var street: String?
    public var city: String?
    public var state: String?
    public var country: String?
    public var timezone: String?

    public init(street: String?, city: String?, state: String?, country: String?, timezone: String?) {
        self.street = street
        self.city = city
        self.state = state
        self.country = country
        self.timezone = timezone
    }

}