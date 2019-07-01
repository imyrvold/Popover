import SwiftUI
import Combine

public class RoleViewModel: BindableObject {
    public let didChange = PassthroughSubject<RoleViewModel, Never>()
    var roles: [Role] = [] {
        didSet {
            print("RoleViewModel roles didSet count: \(self.roles.count)")
            didChange.send(self)
        }
    }
    
    init() {
        self.load()
    }
    
    func load() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            do {
                guard let data = rolesData else { return }
                let roles = try JSONDecoder().decode([Role].self, from: data)
                DispatchQueue.main.async {
                    self.roles = roles
                }
            } catch {
                print("Failed To decode: ", error)
            }
        }
    }
}

