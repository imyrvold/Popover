import SwiftUI

public struct Role: Codable, Identifiable {
    public let id: String?
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
    }
}

