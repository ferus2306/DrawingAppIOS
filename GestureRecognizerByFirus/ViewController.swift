//
//  ViewController.swift
//  GestureRecognizerByFirus
//
//  Created by Firus Hanov on 11/30/19.
//  Copyright © 2019 Firus Hanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
//        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
//        self.view.addGestureRecognizer(leftSwipe)
        
    }
}

// Make it accessible for both of the ViewControllers
//extension UIViewController {
//    @objc func swipeAction(swipe: UISwipeGestureRecognizer){
//
//        switch swipe.direction.rawValue {
//        case 1:
//            performSegue(withIdentifier: "goLeft", sender: self)
//        case 2:
//            performSegue(withIdentifier: "goRight", sender: self)
//        default:
//            break
//        }
//    }
//}
