//
//  ViewController2.swift
//  GestureRecognizerByFirus
//
//  Created by Firus Hanov on 11/30/19.
//  Copyright © 2019 Firus Hanov. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var drawView: DrawView2!
    @IBOutlet weak var toolBox1: DrawView2!
    @IBOutlet weak var toolBox2: DrawView2!
    var number: Int = 0
    
    @IBAction func redButton(_ sender: Any) {
        drawView.strokeColor = UIColor.red.cgColor
    }
    
    @IBAction func greenButton(_ sender: Any) {
        drawView.strokeColor = UIColor.green.cgColor
    }
    
    
    @IBAction func yellowButton(_ sender: Any) {
        drawView.strokeColor = UIColor.yellow.cgColor
    }
    
    @IBAction func blackButton(_ sender: Any) {
        drawView.strokeColor = UIColor.black.cgColor
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        drawView.strokeColor = UIColor.orange.cgColor
    }
    
    
    @IBAction func bigBrushButton(_ sender: Any) {
        drawView.strokeWidth = 40.0
        
    }
    
    @IBAction func penButton(_ sender: Any) {
        drawView.strokeWidth = 10.0
    }
    
    
    @IBAction func eraseButton(_ sender: Any) {
        drawView.erase()
    }
    
    
    @IBAction func undoButton(_ sender: Any) {
        drawView.undo()
    }
    
    
    
    @IBAction func oppUndoButton(_ sender: Any) {
        drawView.oppUndo()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(dragginView))
        let gesture2 = UIPanGestureRecognizer(target: self, action: #selector(dragginView2))
//        let gesture3 = UIGestureRecognizer(target: self, action: #selector(doubleTap))
        toolBox1.addGestureRecognizer(gesture)
        toolBox2.addGestureRecognizer(gesture2)
//        toolBox1.addGestureRecognizer(gesture3)
//
//        let doubleTapRecognizer = UITapGestureRecognizer(target: self,
//                                                         action: #selector(ViewController2.doubleTap(_:)))
//        doubleTapRecognizer.delaysTouchesBegan = true
//        doubleTapRecognizer.numberOfTapsRequired = 2
        
    }
    
    
    
    @objc func dragginView(_ sender: UIPanGestureRecognizer){
        let point = sender.location(in: view)
        toolBox1.center = point
    }
    
    @objc func dragginView2(_ sender: UIPanGestureRecognizer){
        let point = sender.location(in: view)
        toolBox2.center = point
    }
    
//    @objc func doubleTap(_ gestureRecognizer: UITapGestureRecognizer) {
//        print("Recognized a double tap12")
//
//    }
}
