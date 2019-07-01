import SwiftUI
import Combine

public class LoginInfo: BindableObject {
    public var didChange = PassthroughSubject<Void, Never>()
    
    public init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.isValid = false
    }
    
    var validInfo: Bool {
        guard
            !firstName.isEmpty,
            !lastName.isEmpty,
            !email.isEmpty,
            !password.isEmpty
            else { return false }
        return true
    }
    var firstName: String {
        didSet {
            self.isValid = self.validInfo
            if self.validInfo { self.didChange.send(()) }
        }
    }
    var lastName: String {
        didSet {
            self.isValid = self.validInfo
            if self.validInfo { self.didChange.send(()) }
        }
    }
    var email: String {
        didSet {
            self.isValid = self.validInfo
            if self.validInfo { self.didChange.send(()) }
        }
    }
    var password: String {
        didSet {
            self.isValid = self.validInfo
            if self.validInfo { self.didChange.send(()) }
        }
    }
    var isValid: Bool
    
}
