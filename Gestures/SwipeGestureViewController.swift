//
//  SwipeGestureViewController.swift
//  Gestures
//
//  Created by Erica Correa on 5/17/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

import UIKit

class SwipeGestureViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleLeftSwipe))
        leftSwipe.direction = .Left
        self.button.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleRightSwipe))
        rightSwipe.direction = .Right
        self.button.addGestureRecognizer(rightSwipe)
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleUpSwipe))
        upSwipe.direction = .Up
        self.button.addGestureRecognizer(upSwipe)
        
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleDownSwipe))
        downSwipe.direction = .Down
        self.button.addGestureRecognizer(downSwipe)
    }
    
    func handleLeftSwipe() {
        self.button.setTitle("Left Swipe", forState: .Normal)
    }
    
    func handleRightSwipe() {
        self.button.setTitle("Right Swipe", forState: .Normal)
    }
    
    func handleUpSwipe() {
        self.button.setTitle("Up Swipe", forState: .Normal)
    }
    
    func handleDownSwipe() {
        self.button.setTitle("Down Swipe", forState: .Normal)
    }
}
