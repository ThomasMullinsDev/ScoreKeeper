//
//  ScoreboardTableViewController.swift
//  ScoreKeeper
//
//  Created by Thomas Mullins on 3/26/24.
//

import UIKit

class ScoreboardTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell", for: indexPath) as! PlayerTableViewCell
        let player = players[indexPath.row]
        cell.playerIndex = indexPath.row
        cell.playerImage.image = UIImage(named: player.playerImageName)
        cell.playerLabel.text = player.playerName
        cell.scoreLabel.text = player.playerScore
        cell.updateScore()
        cell.backgroundColor = .clear
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            players.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwindToScoreboard(segue: UIStoryboardSegue) {
        tableView.reloadData()
    }
}
