//
//  MatchResults.swift
//  Roshambo
//
//  Created by Maleina Bidek on 3/12/21.
//

import UIKit

class MatchResults: UIViewController {
    
    // MARK: Properties
    
    var player: String?
    var opponent: String?

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var message: UILabel!
    
    // MARK: Actions
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        print(player)
        print(opponent)
        switch (player, opponent) {
        case ("paper", "rock"):
            image.image = UIImage(named: "PaperCoversRock")
            message.text = "Paper covers Rock. You win!"
        case ("rock", "paper"):
            image.image = UIImage(named: "PaperCoversRock")
            message.text = "Paper covers Rock. You lose!"
        case("rock", "scissors"):
            image.image = UIImage(named: "RockCrushesScissors")
            message.text = "Rock crushes Scissors. You win!"
        case( "scissors", "rock"):
            image.image = UIImage(named: "RockCrushesScissors")
            message.text = "Rock crushes Scissors. You lose!"
        case( "scissors", "paper"):
            image.image = UIImage(named: "ScissorsCutPaper")
            message.text = "Scissors cut Paper. You win!"
        case( "paper", "scissors"):
            image.image = UIImage(named: "ScissorsCutPaper")
            message.text = "Scissors cut Paper. You lose!"
        default:
            image.image = UIImage(named: "itsATie")
            message.text = "It's a Tie!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
