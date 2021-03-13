//
//  MatchResults.swift
//  Roshambo
//
//  Created by Maleina Bidek on 3/12/21.
//

import UIKit

class MatchResults: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func matchResult(player: String, opponent: String){
        let image: UIImage!
        let message: String
        
        switch (player, opponent) {
        case ("paper", "rock"):
            image = UIImage(named: "PaperCoversRock")
            message = "Paper covers Rock. You win!"
        case ("rock", "paper"):
            image = UIImage(named: "PaperCoversRock")
            message = "Paper covers Rock. You lose!"
        case("rock", "scissors"):
            image = UIImage(named: "RockCrushesScissors")
            message = "Rock crushes Scissors. You win!"
        case( "scissors", "rock"):
            image = UIImage(named: "RockCrushesScissors")
            message = "Rock crushes Scissors. You lose!"
        case( "scissors", "paper"):
            image = UIImage(named: "ScissorsCutPaper")
            message = "Scissors cut Paper. You win!"
        case( "paper", "scissors"):
            image = UIImage(named: "ScissorsCutPaper")
            message = "Scissors cut Paper. You lose!"
        default:
            image = UIImage(named: "itsATie")
            message = "It's a Tie!"
        }
    }

}
