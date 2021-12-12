//
//  SubmitViewController.swift
//  MadLibs
//
//  Created by Safa Falaqi on 12/12/2021.
//

import UIKit

class SubmitViewController: UIViewController {
    
    @IBOutlet weak var adjLabel: UITextField!
    @IBOutlet weak var verb1Label: UITextField!
    @IBOutlet weak var verb2Label: UITextField!
    @IBOutlet weak var nounLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let toViewControler = segue.destination as? ViewController{
            toViewControler.adjective = adjLabel.text
            toViewControler.verb1 = verb1Label.text
            toViewControler.verb2 = verb2Label.text
            toViewControler.noun = nounLabel.text
        }
    }

}
