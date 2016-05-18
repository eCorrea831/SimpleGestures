//
//  TapGestureViewController.swift
//  Gestures
//
//  Created by Erica Correa on 5/17/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

import UIKit

class TapGestureViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap))
        doubleTapGesture.numberOfTapsRequired = 2
        self.button.addGestureRecognizer(doubleTapGesture)
        
        let twoFingerTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTwoFingerTap))
        twoFingerTapGesture.numberOfTouchesRequired = 2
        self.button.addGestureRecognizer(twoFingerTapGesture)
    }
    
    @IBAction func handleSingleTap(sender: AnyObject) {
        self.button.setTitle("Single Tap", forState: .Normal)
    }
    
    func handleDoubleTap() {
        self.button.setTitle("Double Tap", forState: .Normal)
    }
    
    func handleTwoFingerTap() {
        self.button.setTitle("Two Finger Tap", forState: .Normal)
    }
}
