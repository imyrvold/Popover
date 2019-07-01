import SwiftUI
import Combine

public struct AddUserView : View {
    @ObjectBinding public var loginInfo: LoginInfo
    @EnvironmentObject var viewModel: RoleViewModel
    @State var selectedRole: Role? = nil
    @Environment(\.isPresented) var isPresented: Binding<Bool>?

    public var body: some View {
        NavigationView {
            VStack {
                TextField(self.$loginInfo.firstName, placeholder: Text("First Name"))
                TextField(self.$loginInfo.lastName, placeholder: Text("Last Name"))
                TextField(self.$loginInfo.email, placeholder: Text("Email"))
                SecureField(self.$loginInfo.password, placeholder: Text("Password"))
                
                Divider()
                
                List(self.viewModel.roles) { role in
                    RoleCell(role: role).tapAction {
                        self.selectedRole = role
                    }
                }
            }
                .padding()
                .navigationBarTitle(Text("Add User"))
                .navigationBarItems(trailing:
                    Button(action: {
                        self.saveAction()
                        self.isPresented?.value = false
                    }) {
                        Text("Save")
                })//.disabled(!self.loginInfo.isValid)
        }
    }
    
    // MARK:- Action methods
    func saveAction() {
        
    }

}
