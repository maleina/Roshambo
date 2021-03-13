//
//  PlayGame.swift
//  Roshambo
//
//  Created by Maleina Bidek on 3/12/21.
//

import UIKit

class PlayGame: UIViewController {
    
    // MARK: Outlets

    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!

    // MARK: Other variables
    
    enum ButtonType: Int {
        case paper = 0, rock, scissors
    }
    

    // MARK: Actions
    
    @IBAction func rockChosen(_ sender: UIButton) {
        let controller: MatchResults
        controller = storyboard?.instantiateViewController(withIdentifier: "MatchResults") as! MatchResults

        controller.player = "rock"
        controller.opponent = getOpponentPlay()

        present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func paperChosen(_ sender: UIButton){
        performSegue(withIdentifier: "showResultsfromPaper", sender: self)
    }
    
    @IBAction func scissorsChosen(_ sender: UIButton) {
        // segue is handled automatically in prepare for segue
    }
    
    
    
    // MARK: Helper Functions
    
    
    func getOpponentPlay() -> String{
        let randomValue = 1 + arc4random() % 3
        switch (randomValue){
        case 1:
            return "paper"
        case 2:
            return "rock"
        default: return "scissors"
        }
    }
    
    // MARK: Lifecycle

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResultsFromScissors" {
            let controller = segue.destination as! MatchResults

            controller.player = "scissors"
            controller.opponent = getOpponentPlay()
        }
        
        if segue.identifier == "showResultsfromPaper" {
            let controller = segue.destination as! MatchResults

            controller.player = "paper"
            controller.opponent = getOpponentPlay()
        }
    }


}

