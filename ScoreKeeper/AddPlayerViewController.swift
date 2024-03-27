//
//  AddPlayerViewController.swift
//  ScoreKeeper
//
//  Created by Thomas Mullins on 3/26/24.
//
import UIKit

class AddPlayerViewController: UIViewController {
    
    @IBOutlet weak var saveBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var playerNameTextField: UITextField!
    @IBOutlet weak var currentScoreTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let playerName = playerNameTextField.text else { return }
        guard let playerScore = currentScoreTextField.text else { return }
        
        players.append(PlayerObject(playerImageName: "Person", playerName: playerName, playerScore: playerScore))
        performSegue(withIdentifier: "unwindFromAddPlayer", sender: self)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindFromAddPlayer", sender: self)
    }
}
