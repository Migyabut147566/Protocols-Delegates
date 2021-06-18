//
//  LoginVC.swift
//  Protocols and Delegates
//
//  Created by Migy Yabut on 6/17/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var userNameEntryTxt: UITextField!
    var delegate: LoginCompleteDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneClicked(_ sender: Any) {
        delegate?.userCreated(name: userNameEntryTxt.text ?? "No name")
        dismiss(animated: true, completion: nil)
    }
}
