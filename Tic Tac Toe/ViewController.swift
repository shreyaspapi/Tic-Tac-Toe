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
    @IBOutlet weak var turn: UILabel!
    
    let winningPositions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    var pressedPositionsCross = [Int]()
    var pressedPositionsCircle = [Int]()
    var allPressedButtons = [Int]()
    var count = 0
    
    @IBOutlet var buttons: [UIButton]!
    
    func checkWinning(with currentPositionsCross: [Int], and currentPositionsCircle: [Int]) -> Bool {
        var checker = false
        let setCurrentPositionsCross = Set(currentPositionsCross)
        let setCurrentPositionsCircle = Set(currentPositionsCircle)
        for pair in winningPositions {
            let setPair = Set(pair)
            if setPair.isSubset(of: setCurrentPositionsCross) ||  setPair.isSubset(of: setCurrentPositionsCircle){
                checker = true
                break
            }
        }
        return checker
    }
    
    func putCrossCircle(on button: UIButton) {
        if count % 2 == 0 {
            button.setTitle("⭕️", for: .normal)
            
            turn.text = "❌"
        } else {
            button.setTitle("❌", for: .normal)
            
            turn.text = "⭕️"
        }
    }
    
    func updateNumberOfButtonsPressed(with buttonNumber: Int){
        if count % 2 == 0 {
            pressedPositionsCross.append(buttonNumber)
        } else {
            pressedPositionsCircle.append(buttonNumber)
        }
    }
    
    @IBAction func touchButton(_ sender: UIButton) {
        let buttonNumber = buttons.index(of: sender)!
        if allPressedButtons.contains(buttonNumber) == false {
            allPressedButtons.append(buttonNumber)
            print("Button Number: \(buttonNumber as Int?)")
            count += 1
            putCrossCircle(on: sender)
            updateNumberOfButtonsPressed(with: buttonNumber)
            
            if checkWinning(with: pressedPositionsCross, and: pressedPositionsCircle){
                if count % 2 == 0{
                    turn.text = "Winner: ⭕️"
                } else {
                    turn.text = "Winner: ❌"
                }
            }
        }
    }
}

