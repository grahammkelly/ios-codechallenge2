//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Graham Kelly on 06/04/2018.
//  Copyright © 2018 Graham Kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvas: UIView!
    @IBOutlet weak var shakeHintLabel: UILabel!

    var isHinting = false

    override func viewDidLoad() {
        super.viewDidLoad()
        isHinting = showHint(false)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func toggleHint() {
        isHinting = showHint(!isHinting)
    }

    func showHint(_ shouldHint: Bool) -> Bool {
        print("Showing hint? \(shouldHint)")
        if (!shouldHint) {
            shakeHintLabel.textColor = canvas.backgroundColor
        } else {
            shakeHintLabel.textColor = UIColor.black
        }
        return shouldHint
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        toggleHint()
    }


}

