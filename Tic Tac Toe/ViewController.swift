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
            
        }
    }
    
    @IBOutlet var buttons: [UIButton]!
    
    func putCross(on button: UIButton) {
        button.setImage(#imageLiteral(resourceName: "cross") ,for: .normal)
    }
    func putCircle(on button: UIButton) {
        button.setImage(#imageLiteral(resourceName: "cross") ,for: .normal)
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        let buttonNumber = buttons.index(of: sender)
        
    }
    
}

