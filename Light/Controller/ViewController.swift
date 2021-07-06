//
//  ViewController.swift
//  Light
//
//  Created by Lago on 2021/03/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    var button1 = (colorBt1, UIColor(red: 0.93, green: 0.30, blue: 0.40, alpha: 1.00), ["🎀", "👛", "💗", "💓", "💕", "💖", "💞", "💘", "💋", "💝", "🌺", "🌷", "🌸", "💐", "🐷", "🍥", "💒", "🍑", "📌","📍","📮","🖍", "🍄", "🍅", "🎟", "🐞"])
    var button2 = (colorBt2, UIColor(red: 0.45, green: 0.73, blue: 1.00, alpha: 1.00), ["🤖", "💙", "💦", "👔", "👕", "👖", "👗", "💎", "🐳", "🐋", "🐟", "🍬", "🌏", "🗺", "🚆", "🌀", "💧", "🌊", "🌐", "🛰", "🐳", "🐟", "📺", "🧞‍♂️", "🐋", "🚌"])
    var button3 = (colorBt3, UIColor(red: 0.77, green: 0.42, blue: 0.94, alpha: 1.00), ["😈", "👿", "👾", "🧕", "🕺", "💜", "🐙", "🍆", "🍇", "🔮", "🧞‍♀️", "☔", "🌌" ])
    var button4 = (colorBt4, UIColor(red: 0.99, green: 0.80, blue: 0.43, alpha: 1.00), ["😘", "😙", "😚", "😽", "😿", "😾", "🦁", "🐯", "🐤", "🐥", "🐝", "🌕", "🌗", "🌙", "☀️", "🌛", "📯", "🔔", "🏅", "🥇", "💛", "🍺", "🍻", "🥂", "⭐", "🌞", "🌝", "🌤", "⚡", "💫", "👑", "🍋", "🍌", "🌽", "🧀", "🍯", "🐹", "🌠"])
    var button5 = (colorBt5, UIColor(red: 0.00, green: 0.72, blue: 0.58, alpha: 1.00), ["⛳", "🍈", "🍏", "🥝", "🥒", "🥦", "🥑", "🍐", "🦕", "🐸", "🐢", "🌲", "🌳", "🍀", "🌿", "🌱", "🌵", "🌴", "🌾", "🤢", "👽", "💚", "🎄", "⛰", "🚃", "🛣", "📗", "🔫"])

    
    @IBOutlet weak var touchView: UIView!
    @IBOutlet weak var colorBt1: UIButton!
    @IBOutlet weak var colorBt2: UIButton!
    @IBOutlet weak var colorBt3: UIButton!
    @IBOutlet weak var colorBt4: UIButton!
    @IBOutlet weak var colorBt5: UIButton!
    @IBOutlet weak var emoji: UILabel!
    @IBOutlet weak var message: UILabel!
    
    let currentBright = UIScreen.main.brightness
    var backgroundColor: UIColor!
    

    func buttonPressed() {
        //버튼을 눌렀을 때 테두리굵기가 굵어지게?
        //colorBt1.layer.borderWidth = 3
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        touchView.backgroundColor = UIColor.black
        emoji.alpha = 0
        message.alpha = 0
        
        let colorBtn: [UIButton] = [colorBt1, colorBt2, colorBt3, colorBt4, colorBt5]
        //var colors: (UIButton, UIColor, String)
        
        
        for i in colorBtn[0...4] {
            i.layer.cornerRadius = 12.5
            i.layer.borderWidth = 1
            i.layer.borderColor = CGColor(gray: 0.5, alpha: 1)
        }
        
        
        
    }
    
    @IBAction func colorBt1(_ sender: UIButton) {
        buttonPressed()
        backgroundColor = button1.1 //pink
        emoji.text = button1.2.randomElement()
        message.alpha = 0
    }
    @IBAction func colorBt2(_ sender: UIButton) {
        buttonPressed()
        backgroundColor = button2.1//blue
        emoji.text = button2.2.randomElement()
        message.alpha = 0
    }
    @IBAction func colorBt3(_ sender: UIButton) {
        buttonPressed()
        backgroundColor = button3.1//purple
        emoji.text = button3.2.randomElement()
        message.alpha = 0
    }
    @IBAction func colorBt4(_ sender: UIButton) {
        buttonPressed()
        backgroundColor = button4.1//yellow
        emoji.text = button4.2.randomElement()
        message.alpha = 0
    }
    @IBAction func colorBt5(_ sender: UIButton) {
        buttonPressed()
        backgroundColor = button5.1 //green
        emoji.text = button5.2.randomElement()
        message.alpha = 0
    }
    
    
    
    @IBAction func colorChangeBt(_ sender: UIButton) {
        //var status = touchView.backgroundColor
        let buttons: [UIButton] = [colorBt1, colorBt2, colorBt3, colorBt4, colorBt5]
        //message.alpha = 1
        
        if let lightButton : UIButton = sender as? UIButton
        {
            lightButton.isSelected = !lightButton.isSelected
            
            if (lightButton.isSelected)
            {
                lightButton.setTitleColor(UIColor.white, for: UIControl.State.selected)
                touchView.backgroundColor = .white
                sender.setTitle("turn off your light!", for: .normal)
                //UIScreen.main.brightness = CGFloat(1)
                emoji.alpha = 1
                //컬러버튼이 아니라 라이트버튼을 누를때마다 랜덤으로 바뀌게 하는 법?
                
                for i in buttons {
                    i.isEnabled = false
                    touchView.backgroundColor = backgroundColor
                    
                }
                
                
            } else {
                touchView.backgroundColor = .black
                sender.setTitle("turn on your light!", for: .normal)
                //UIScreen.main.brightness = currentBright
                emoji.alpha = 0
                for i in buttons {
                    i.isEnabled = true
                    
                }
                
            }
        }
        
        
    }
    
    //modify for commit test
}

