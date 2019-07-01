import SwiftUI

public struct RoleCell : View {
    var role: Role
    
    public init(role: Role) {
        self.role = role
    }
    
    public var body: some View {
        HStack {
//            Image(systemName: "person.badge.plus")
            Text(self.role.name)
        }
    }
}

