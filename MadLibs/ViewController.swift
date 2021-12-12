//
//  ViewController.swift
//  MadLibs
//
//  Created by Safa Falaqi on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var adjective:String?
    var verb1:String?
    var verb2:String?
    var noun:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setText(){
        guard adjective != nil && verb1 != nil && verb2 != nil && noun != nil else {
            // handle error
            return
        }
        //I am sure is not a nil 
        textLabel.text = "We are having a perfectly \(adjective!) right now. Later we will \(verb1!) and \(verb2!) in the \(noun!)"

    }
    
    //unwind method must be in the destination view controller
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        setText()
    }

 
}

