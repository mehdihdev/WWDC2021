import SpriteKit

public class IntroScene: SKScene{
    override public func didMove(to view: SKView) {
        let cfURL = Bundle.main.url(forResource: "theBoldFont", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = UIFont(name: "The Bold Font", size:  14.0)

        let background = SKSpriteNode(imageNamed: "Background.png")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let GameName = SKLabelNode(fontNamed: "The Bold Font")
        GameName.text = "Car"
        GameName.fontSize = 200
        GameName.fontColor = .black
        GameName.zPosition = 1
        GameName.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.7)
        self.addChild(GameName)

        let GameName1 = SKLabelNode(fontNamed: "The Bold Font")
        GameName1.text = "Crash"
        GameName1.fontSize = 200
        GameName1.fontColor = .black
        GameName1.zPosition = 1
        GameName1.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.625)
        self.addChild(GameName1)
        
        
        let StartTheGameAlready = SKLabelNode(fontNamed: "The Bold Font")
        StartTheGameAlready.text = "Play"
        StartTheGameAlready.fontSize = 150
        StartTheGameAlready.fontColor = .black
        StartTheGameAlready.zPosition = 1
        StartTheGameAlready.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.4)
        StartTheGameAlready.name = "Start"
        self.addChild(StartTheGameAlready)
        
        let MadeByMehdi = SKLabelNode(fontNamed: "The Bold Font")
        MadeByMehdi.text = "Made by Mehdi Hussain"
        MadeByMehdi.fontSize = 50
        MadeByMehdi.fontColor = .black
        MadeByMehdi.zPosition = 1
        MadeByMehdi.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.2)
        self.addChild(MadeByMehdi)
        
        
        
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            let pointOfTouch = touch.location(in: self)
            let nodeTappedAt = atPoint(pointOfTouch)
            if nodeTappedAt.name == "Start" {
                let SceneMovedTo = DrawScene(size: self.size)
                SceneMovedTo.scaleMode = self.scaleMode
                let StartTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(SceneMovedTo, transition: StartTransition)
            }
        }
    }
}


