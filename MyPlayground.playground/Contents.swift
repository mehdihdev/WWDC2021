import UIKit
import SpriteKit
import GameplayKit
import PlaygroundSupport

class ViewController : UIViewController {
    override func loadView() {
        let view = SKView()
        view.presentScene(IntroScene(size: CGSize(width: 1536, height: 2048)))
    
        //view.ignoresSiblingOrder = true
        //view.showsFPS = false
        //view.showsNodeCount = false
        self.view = view
    }
    
}

PlaygroundPage.current.liveView = ViewController()
