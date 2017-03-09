//
//  ViewController.swift
//  TicTacToe
//
//  Created by Nishant Patel on 3/8/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    var buttonPlayed = [Int]()
    
    var toggle = false
    var gameWon = false
    @IBAction func gameAction(_ sender: UIButton) {
        print(sender.tag)
        
        if gameWon == false {
        
            if checkPlayed(buttonTag: sender.tag) == false {
                if toggle == true {
                    setRedColor(buttonTag: sender.tag)
                    toggle = false
                } else {
                    setBlueColor(buttonTag: sender.tag)
                    toggle = true
                }
                buttonPlayed.append(sender.tag)
                print(buttonPlayed.count)
                checkGame()
            }
        }
        
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        b1.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b2.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b3.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b4.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b5.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b6.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b7.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b8.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        b9.setBackgroundImage(#imageLiteral(resourceName: "white"), for: .normal)
        gameWon = false
        buttonPlayed = []
        winnerLabel.isHidden = true
    }
    func checkPlayed(buttonTag: Int) -> Bool {
        if self.buttonPlayed.contains(buttonTag){
            return true
        }
        else {
            return false
        }
    }
    
    func checkGame() {
        if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b2.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b2.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b4.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b6.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b4.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b6.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b8.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b8.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b4.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b4.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b2.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b8.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b2.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b8.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b6.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b6.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b1.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b9.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        } else if b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") && b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "red_x") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Red Won!"
            gameWon = true
            return
        } else if b3.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b5.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") && b7.backgroundImage(for: .normal) == #imageLiteral(resourceName: "blue_O") {
            winnerLabel.isHidden = false
            winnerLabel.text = "Congratulations Blue Won!"
            gameWon = true
            return
        }
    else if buttonPlayed.count == 9 {
            print("Looser")
            winnerLabel.isHidden = false
            winnerLabel.text = "Better Luck Next Time"
            return
        }
        
    }
    
    func setBlueColor(buttonTag: Int) {
        switch buttonTag {
        case 1:
            b1.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 2:
            b2.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 3:
            b3.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 4:
            b4.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 5:
            b5.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 6:
            b6.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 7:
            b7.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 8:
            b8.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        case 9:
            b9.setBackgroundImage(#imageLiteral(resourceName: "blue_O"), for: .normal)
        default:
            b9.backgroundColor = UIColor.brown
        }
    }
    
    func setRedColor(buttonTag: Int) {
        switch buttonTag {
        case 1:
            b1.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 2:
            b2.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 3:
            b3.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 4:
            b4.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 5:
            b5.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 6:
            b6.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 7:
            b7.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 8:
            b8.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        case 9:
            b9.setBackgroundImage(#imageLiteral(resourceName: "red_x"), for: .normal)
        default:
            b9.backgroundColor = UIColor.brown
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    

}

