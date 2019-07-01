import SwiftUI
import Combine

public class ViewController: UIViewController {
    var rolesModel = RoleViewModel()

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBSegueAction public func AddSegueAction(_ coder: NSCoder) -> UIViewController? {
        let addUserView = AddUserView(loginInfo: LoginInfo(firstName: "", lastName: "", email: "", password: ""))
        print("ViewController AddSegueAction")
        return UIHostingController(coder: coder, rootView: addUserView.environmentObject(self.rolesModel))
    } 
    
}
