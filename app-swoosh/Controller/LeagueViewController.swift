//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Mohammed Mohsin Sayed on 11/4/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {

    var player: Player!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        nextButton.backgroundColor = UIColor(white: 0.0, alpha: 0.5)
        nextButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    //Actions
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "Mens")
        
        let nonSelectedButtons = [WomensButton, CoedButton]
        handleButtons(selectedButton: MensButton, nonSelectedButtons: nonSelectedButtons)
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "Womens")
        
        let nonSelectedButtons = [MensButton, CoedButton]
        handleButtons(selectedButton: WomensButton, nonSelectedButtons: nonSelectedButtons)
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "Co-ed")
        
        let nonSelectedButtons = [WomensButton, MensButton]
        handleButtons(selectedButton: CoedButton, nonSelectedButtons: nonSelectedButtons)
    }
    
    //Outlets
    @IBOutlet weak var nextButton: BorderedButton!
    @IBOutlet weak var MensButton: BorderedButton!
    @IBOutlet weak var WomensButton: BorderedButton!
    @IBOutlet weak var CoedButton: BorderedButton!
    
    //Functions
    func selectedLeague(leagueType: String) {
        
        player.desiredLeage = leagueType
        nextButton.backgroundColor = UIColor(white: 0.0, alpha: 1.0)
        nextButton.isEnabled = true
    }
    
    func handleButtons(selectedButton:  UIButton, nonSelectedButtons: [BorderedButton?]) {
        
        selectedButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        selectedButton.setTitleColor(UIColor.black, for: .normal)
        
        for button in nonSelectedButtons {
            button?.backgroundColor = UIColor.black
            button?.setTitleColor(UIColor.white, for: .normal)
        }
    }
  

}
