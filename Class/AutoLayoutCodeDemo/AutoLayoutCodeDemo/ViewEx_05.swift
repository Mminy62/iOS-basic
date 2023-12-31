//
//  ViewEx_05.swift
//  AutoLayoutCodeDemo
//
//  Created by 이민영 on 2023/11/13.
//

import Foundation
import UIKit

class ViewEx_05: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createLayout()
    }
    
    func createLayout(){
        
        let superview = self.view!
        
        let leftview = UIView()
        leftview.translatesAutoresizingMaskIntoConstraints = false
        leftview.backgroundColor = UIColor.red
//        leftview.frame = CGRect(x: 0, y: 0, width: superview!.frame.width / 2 , height: superview!.frame.height / 3)
        
        
        let rightview = UIView()
        rightview.translatesAutoresizingMaskIntoConstraints = false
        rightview.backgroundColor = UIColor.green
//        rightview.frame = CGRect(x: 0, y: 0, width: superview!.frame.width / 2 , height: superview!.frame.height / 3)
        
//
        
        superview.addSubview(leftview)
        superview.addSubview(rightview)
        
//        rightview.frame.origin.x += superview!.frame.width / 2
        
        let constraints = [
            leftview.topAnchor.constraint(equalTo: superview.topAnchor),
            leftview.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            leftview.widthAnchor.constraint(equalTo: superview.widthAnchor, multiplier: 1/2 ),
            leftview.heightAnchor.constraint(equalTo: superview.heightAnchor, multiplier: 1/3),
            rightview.widthAnchor.constraint(equalTo: superview.widthAnchor, multiplier: 1/2 ),
            rightview.heightAnchor.constraint(equalTo: superview.heightAnchor, multiplier: 1/3),
            
            rightview.topAnchor.constraint(equalTo: superview.topAnchor),
            rightview.leadingAnchor.constraint(equalTo: leftview.trailingAnchor),
            rightview.trailingAnchor.constraint(equalTo: superview.trailingAnchor)
        
        ]
        
        NSLayoutConstraint.activate(constraints)
        
//        leftview.topAnchor.constraint(equalTo: superview!.topAnchor, constant: 0).isActive = true
//        leftview.leadingAnchor.constraint(equalTo: superview!.leadingAnchor, constant: 0).isActive = true
        
//        rightview.topAnchor.constraint(equalTo: superview!.topAnchor, constant: 0).isActive = true
//        rightview.leadingAnchor.constraint(equalTo: leftview.trailingAnchor, constant: 0).isActive = true
//        
        
    }
}

