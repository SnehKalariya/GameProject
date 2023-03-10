//
//  ViewController3.swift
//  GameProject
//
//  Created by Sneh kalariya on 22/02/23.
//

import UIKit

class ViewController3: UIViewController {

    var frequncy = 0.1
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trueButton.layer.cornerRadius = 25
        falseButton.layer.cornerRadius = 25
    }

}
