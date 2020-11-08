//
// Comment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Comment: Codable { 


    public var id: String?
    public var message: String?
    public var owner: User?
    public var publishDate: String?

    public init(id: String?, message: String?, owner: User?, publishDate: String?) {
        self.id = id
        self.message = message
        self.owner = owner
        self.publishDate = publishDate
    }

}