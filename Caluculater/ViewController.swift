//
//  ViewController.swift
//  Caluculater
//
//  Created by 杉井位次 on 2023/05/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel! //計算結果を表示するラベル
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var number4: Int = 4
    
    var ope: Int = 0 //どの四則演算をするかを判定するための変数

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select0() {
        number1 = number1*10 + 0
        label.text = String(number1)
    }
    
    @IBAction func select1() {
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2() {
        number1 = number1*10 + 2
        label.text = String(number1)
    }

    @IBAction func select3() {
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4() {
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5() {
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6() {
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7() {
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8() {
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9() {
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    
    @IBAction func plus() {
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func subtract() {
        number2 = number1
        number1 = 0
        ope = 2
    }
    
    @IBAction func multiply() {
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func divide() {
        number2 = number1
        number1 = 0
        ope = 4
    }
    
    @IBAction func reset() {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.text = String(number1)
        label.textColor = UIColor.black
    }
    
    @IBAction func equal() {
        
        if ope == 1 {
            //プラスの時
            number3 = number2 + number1
        } else if ope == 2 {
            //マイナスの時
            number3 = number2 - number1
        } else if ope == 3 {
            //かけ算の時
            number3 = number2 * number1
        } else if ope == 4 {
            //割り算の時
            number3 = number2 / number1
        }
        
        label.text = String(number3)
        
        if number3 >= 10 {
            label.textColor = UIColor.red
        } else if number3 < -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
    }

}

