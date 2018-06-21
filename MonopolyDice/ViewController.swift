//
//  ViewController.swift
//  MonopolyDice
//
//  Created by Administrator on 6/19/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var textUser: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        var leftNumber = Int(arc4random_uniform(5)) + 1
        var rightNumber = Int(arc4random_uniform(5)) + 1
        var leftImage:String = ""
        var rightImage:String = ""
        
        leftImage = "dice\(leftNumber).jpg"
        rightImage = "dice\(rightNumber).jpg"
        
        leftDice.image = UIImage(named: leftImage)
        rightDice.image = UIImage(named: rightImage)
        
        if leftNumber == rightNumber {
            myLabel.textColor = UIColor.red
        } else {
            myLabel.textColor = UIColor.black
        }
        
        myLabel.text = String(leftNumber + rightNumber)
    }
    
    @IBAction func plus(_ sender: Any) {
        var myVal:Int = (textUser.text! as NSString).integerValue
        
        textUser.text = String(myVal + 5)
    }
    
    @IBAction func minus(_ sender: Any) {
        var myVal:Int = (textUser.text! as NSString).integerValue
        
        textUser.text = String(myVal - 5)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


