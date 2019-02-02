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
    
    var count = 0 {
        didSet {
            if count % 2 == 0 {
                player1Label.textColor = #colorLiteral(red: 0.8472519517, green: 0.831594944, blue: 0.1624552906, alpha: 1)
                player2Label.textColor = #colorLiteral(red: 0.04677937925, green: 0.6296003461, blue: 0.5724986196, alpha: 1)
            } else {
                player1Label.textColor = #colorLiteral(red: 0.04677937925, green: 0.6296003461, blue: 0.5724986196, alpha: 1)
                player2Label.textColor = #colorLiteral(red: 0.8472519517, green: 0.831594944, blue: 0.1624552906, alpha: 1)
            }
        }
    }
    
    @IBOutlet var buttons: [UIButton]!
    
    func putCross(on button: UIButton) {
        button.setImage(#imageLiteral(resourceName: "cross") ,for: .normal)
    }
    func putCircle(on button: UIButton) {
        button.setImage(#imageLiteral(resourceName: "circle") ,for: .normal)
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        let buttonNumber = buttons.index(of: sender)
        count += 1
    }
    
}

