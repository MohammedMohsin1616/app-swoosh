//
//  SkillViewController.swift
//  app-swoosh
//
//  Created by Mohammed Mohsin Sayed on 11/4/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class SkillViewController: UIViewController {

    var player: Player! 
    var nonSelectedButtons: [BorderedButton] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finishButton.isEnabled = false
    }

    //Actions
    @IBAction func onFinishTapped(_ sender: Any) {
        
    }
    @IBAction func onBeginnerTapped(_ sender: Any) {
        
        selectSkillLevel(skillLevel: "Beginner")
        buttonHandler.handleButtons(selectedButton: beginnerButton, nonSelectedButtons: [ballerButton])
    }
    @IBAction func onBallerTapped(_ sender: Any) {
        
        selectSkillLevel(skillLevel: "Baller")
        buttonHandler.handleButtons(selectedButton: ballerButton, nonSelectedButtons: [beginnerButton])
    }
    
    //Outlets
    @IBOutlet weak var beginnerButton: BorderedButton!
    @IBOutlet weak var ballerButton: BorderedButton!
    @IBOutlet weak var finishButton: BorderedButton!
    

    //Function
    func selectSkillLevel(skillLevel: String) {
        
        player.skillLevel = skillLevel
        finishButton.backgroundColor = UIColor(white: 0.0, alpha: 1.0)
        finishButton.isEnabled = true
    }
}
