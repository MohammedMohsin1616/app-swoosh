//
//  ViewController.swift
//  app-swoosh
//
//  Created by Mohammed Mohsin Sayed on 10/31/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoImageView.frame = CGRect(x: view.frame.size.width / 2 -
        logoImageView.frame.size.width / 2, y: view.frame.origin.y, width: logoImageView.frame.size.width, height: logoImageView.frame.size.height)
        
        backgroundImage.frame = view.frame
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }


}

