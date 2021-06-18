//
//  ViewController.swift
//  Protocols and Delegates
//
//  Created by Migy Yabut on 6/17/21.
//

import UIKit

class HomeVC: UIViewController, LoginCompleteDelegate {

    @IBOutlet weak var usernameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func userCreated(name: String) {
        usernameLbl.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? LoginVC {
            destination.delegate = self
        }
    }
}

