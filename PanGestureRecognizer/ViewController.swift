//
//  ViewController.swift
//  PanGestureRecognizer
//
//  Created by itsector on 06/03/2020.
//  Copyright © 2020 itsector. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var practiceView: UIView = {
        let _practiceView = UIView()
        
        _practiceView.backgroundColor = UIColor.orange
        
        return _practiceView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(practiceView)
        
        practiceView.frame = CGRect(x: view.frame.midX - 60, y: view.frame.midY - 60, width: 120, height: 120)
        
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(panTouched(recognizer:)))
        
        practiceView.addGestureRecognizer(gesture)
        
        practiceView.isUserInteractionEnabled = true
    }
    
    @objc func panTouched(recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: view)
        
        practiceView.center = CGPoint(x: practiceView.center.x + translation.x, y: practiceView.center.y + translation.y)
        
        recognizer.setTranslation(CGPoint.zero, in: view)
        
        
        
    }



    

}

