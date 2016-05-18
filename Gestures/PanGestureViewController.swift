//
//  PanGestureViewController.swift
//  Gestures
//
//  Created by Erica Correa on 5/17/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

import UIKit

class PanGestureViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        self.button.addGestureRecognizer(pan)
    }

    func handlePanGesture(sender: UIPanGestureRecognizer) {
        self.button.center = sender.locationInView(self.view)
        self.button.setTitle("I'm bein' panned", forState: .Normal)
    }
}
