//
//  PlayerTableViewCell.swift
//  ScoreKeeper
//
//  Created by Thomas Mullins on 3/26/24.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var stepperCount: UIStepper!
    
    var playerIndex: Int = 0
        
        func updateScore() {
            guard let score = scoreLabel.text,
                  let scoreValue = Double(score) else {
                stepperCount.value = 0
                return
            }
            stepperCount.value = scoreValue
        }
        
        @IBAction func stepperValueChanged(_ sender: Any) {
            let newScore = Int(stepperCount.value).description
            scoreLabel.text = newScore
            players[playerIndex].playerScore = newScore
            
        }
    }
