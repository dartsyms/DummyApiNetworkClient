//
// Tags.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** list of tags */
public struct Tags: Codable { 


    public var data: [String]?
    public var total: Int?
    public var page: Int?
    public var limit: Int?
    public var offset: Int?

    public init(data: [String]?, total: Int?, page: Int?, limit: Int?, offset: Int?) {
        self.data = data
        self.total = total
        self.page = page
        self.limit = limit
        self.offset = offset
    }

}