//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Shreyas on 02/02/19.
//  Copyright © 2019 Shreyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    
    let winningPositions = [[0,1,2], [3,4,5], [6,7,8], [0, 3, 6], [1,4,7], [2,5,8], [], []]
    
    var count = 0
    
    @IBOutlet var buttons: [UIButton]!
    
    func putCrossCircle(on button: UIButton) {
        if count % 2 == 0 {
            button.setTitle("⭕️", for: .normal)
            
            player1Label.textColor = #colorLiteral(red: 0.8472519517, green: 0.831594944, blue: 0.1624552906, alpha: 1)
            player2Label.textColor = #colorLiteral(red: 0.04677937925, green: 0.6296003461, blue: 0.5724986196, alpha: 1)
        } else {
            button.setTitle("❌", for: .normal)
            
            player1Label.textColor = #colorLiteral(red: 0.04677937925, green: 0.6296003461, blue: 0.5724986196, alpha: 1)
            player2Label.textColor = #colorLiteral(red: 0.8472519517, green: 0.831594944, blue: 0.1624552906, alpha: 1)
        }
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        let buttonNumber = buttons.index(of: sender)
        // Do not change anything
        print("Button Number: \(buttonNumber as Int?)")
        count += 1
        putCrossCircle(on: sender)
    }
    
}

