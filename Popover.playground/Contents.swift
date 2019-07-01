import PlaygroundSupport
import SwiftUI

let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
let navigationController = storyboard.instantiateViewController(identifier: "navigationController") as? UINavigationController
navigationController?.preferredContentSize = CGSize(width: 768, height: 980)
PlaygroundPage.current.liveView = navigationController
PlaygroundPage.current.needsIndefiniteExecution = true 
