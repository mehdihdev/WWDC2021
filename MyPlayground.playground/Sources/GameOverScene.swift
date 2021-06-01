import SpriteKit
import UIKit

public class GameOverScene: SKScene {
    
    let restartLabel = SKLabelNode(fontNamed: "The Bold Font")
    override public func didMove(to view: SKView) {
        
        let cfURL = Bundle.main.url(forResource: "theBoldFont", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        let font = UIFont(name: "The Bold Font", size:  14.0)
        
        let background = SKSpriteNode(imageNamed: "Background.png")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let gameOverHugeLabel = SKLabelNode(fontNamed: "The Bold Font")
        gameOverHugeLabel.text = "Game Over"
        gameOverHugeLabel.fontSize = 165
        gameOverHugeLabel.fontColor = SKColor.white
        gameOverHugeLabel.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.7)
        gameOverHugeLabel.zPosition = 1
        self.addChild(gameOverHugeLabel)
        
        let scoreLabel = SKLabelNode(fontNamed: "The Bold Font")
        scoreLabel.text = "Score: \(gameScore)"
        scoreLabel.fontSize = 125
        scoreLabel.fontColor = SKColor.white
        scoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.55)
        scoreLabel.zPosition = 1
        self.addChild(scoreLabel)
        
        let BackLabel = SKLabelNode(fontNamed: "The Bold Font")
        BackLabel.text = "Main Menu"
        BackLabel.fontSize = 60
        BackLabel.fontColor = SKColor.white
        BackLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.left
        BackLabel.position = CGPoint(x: self.size.width * 0.25, y: self.size.height * 0.9)
        BackLabel.zPosition = 100
        BackLabel.name = "Back"
        self.addChild(BackLabel)
        
        let defaults = UserDefaults()
        var highScoreNumber = defaults.integer(forKey: "highestScore")
        
        if gameScore > highScoreNumber {
            highScoreNumber = gameScore
            defaults.set(highScoreNumber, forKey: "highestScore")
        }
        
        let highScoreLabel = SKLabelNode(fontNamed: "The Bold Font")
        highScoreLabel.text = "High Score: \(highScoreNumber)"
        highScoreLabel.fontSize = 125
        highScoreLabel.fontColor = SKColor.white
        highScoreLabel.zPosition = 1
        highScoreLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.45)
        self.addChild(highScoreLabel)
        
        
        restartLabel.text = "Restart"
        restartLabel.fontSize = 90
        restartLabel.fontColor = SKColor.white
        restartLabel.zPosition = 1
        restartLabel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.3)
        self.addChild(restartLabel)
        
    }
    
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let pointOfTouch = touch.location(in: self)
            let nodeTappedAt = atPoint(pointOfTouch)
            if restartLabel.contains(pointOfTouch) {
                let nextScene = GameScene(size: self.size)
                nextScene.scaleMode = self.scaleMode
                let newandcoolTransition = SKTransition.fade(withDuration: 0.5)
                self.view?.presentScene(nextScene, transition: newandcoolTransition)
            }
            if nodeTappedAt.name == "Back" {
                let SceneMovedTo = IntroScene(size: self.size)
                SceneMovedTo.scaleMode = self.scaleMode
                let StartTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(SceneMovedTo, transition: StartTransition)
            }
        }
    }
    
    
    
}

