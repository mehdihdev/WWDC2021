import PlaygroundSupport
import SpriteKit

public class DrawScene: SKScene {

    
    override public func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "Background.png")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let first = SKLabelNode(fontNamed: "The Bold Font")
        first.text = "Welcome!"
        first.fontSize = 165
        first.fontColor = .black
        first.zPosition = 1
        first.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.9)
        first.name = "first"
        self.addChild(first)
        
        let second = SKLabelNode(fontNamed: "The Bold Font")
        second.text = "You are driving in a car"
        second.fontSize = 60
        second.fontColor = .black
        second.zPosition = 1
        second.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.8)
        second.name = "second"
        self.addChild(second)
        
        let third = SKLabelNode(fontNamed: "The Bold Font")
        third.text = "and some other cars are trying to kill you!"
        third.fontSize = 60
        third.fontColor = .black
        third.zPosition = 1
        third.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.75)
        third.name = "third"
        self.addChild(third)
        
        let thirdandahalf = SKLabelNode(fontNamed: "The Bold Font")
        thirdandahalf.text = "luckily, your car has a gun!"
        thirdandahalf.fontSize = 60
        thirdandahalf.fontColor = .black
        thirdandahalf.zPosition = 1
        thirdandahalf.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.7)
        thirdandahalf.name = "thirdandahalf"
        self.addChild(thirdandahalf)
        
        let fourth = SKLabelNode(fontNamed: "The Bold Font")
        fourth.text = "defeat all the enemy cars"
        fourth.fontSize = 60
        fourth.fontColor = .black
        fourth.zPosition = 1
        fourth.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.65)
        fourth.name = "fourth"
        self.addChild(fourth)
        
        let fifth = SKLabelNode(fontNamed: "The Bold Font")
        fifth.text = "Before you crash into them,"
        fifth.fontSize = 60
        fifth.fontColor = .black
        fifth.zPosition = 1
        fifth.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.6)
        fifth.name = "fifth"
        self.addChild(fifth)
        
        let sixth = SKLabelNode(fontNamed: "The Bold Font")
        sixth.text = "or they zoom right past you!"
        sixth.fontSize = 60
        sixth.fontColor = .black
        sixth.zPosition = 1
        sixth.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.55)
        sixth.name = "sixth"
        self.addChild(sixth)
        
        let seventh = SKLabelNode(fontNamed: "The Bold Font")
        seventh.text = "You have 3 lives, use them wisely!"
        seventh.fontSize = 60
        seventh.fontColor = .black
        seventh.zPosition = 1
        seventh.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.5)
        seventh.name = "seventh"
        self.addChild(seventh)
        
        
        let eight = SKLabelNode(fontNamed: "The Bold Font")
        eight.text = "Lets Go!"
        eight.fontSize = 165
        eight.fontColor = .black
        eight.zPosition = 1
        eight.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.3)
        eight.name = "eight"
        self.addChild(eight)
        
        
    }
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches {
            let pointOfTouch = touch.location(in: self)
            let nodeTappedAt = atPoint(pointOfTouch)
            if nodeTappedAt.name == "eight" {
                let SceneMovedTo = GameScene(size: self.size)
                SceneMovedTo.scaleMode = self.scaleMode
                let StartTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(SceneMovedTo, transition: StartTransition)
            }
        }

    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }

    


    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }

    public override func update(_ currentTime: TimeInterval) {
    }

    
}

