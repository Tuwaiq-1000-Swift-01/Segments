//
//  ViewController.swift
//  example
//
//  Created by Nada Alansari on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var secondSegment = UISegmentedControl()
    
    func addFirstSegment() {
        let segmentItems = ["a", "b", "c"]
        let firstSegment = UISegmentedControl(items: segmentItems)
        firstSegment.frame = CGRect(x: 10, y: 250, width: (self.view.frame.width - 20), height: 50)
        firstSegment.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        firstSegment.selectedSegmentIndex = 0
        view.addSubview(firstSegment)
    }
    func addSecondSegment(){
        let arr = ["g","d","f"]
        secondSegment = UISegmentedControl(items: arr)
        secondSegment.frame = CGRect(x: 10, y: 450, width: (self.view.frame.width - 20), height: 50)
        secondSegment.selectedSegmentIndex = 0
        view.addSubview(secondSegment)
    }
    
        @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: "1s", at: 0, animated: true)
            secondSegment.insertSegment(withTitle: "1s", at: 1, animated: true)
            secondSegment.insertSegment(withTitle: "1s", at: 2, animated: true)
            break
        case 1:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: "2s", at: 0, animated: true)
            secondSegment.insertSegment(withTitle: "2s", at: 1, animated: true)
            secondSegment.insertSegment(withTitle: "2s", at: 2, animated: true)
            break
        case 2:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: "3s", at: 0, animated: true)
            secondSegment.insertSegment(withTitle: "3s", at: 1, animated: true)
            secondSegment.insertSegment(withTitle: "3s", at: 2, animated: true)
        default:
            print("something went wrong :( ")
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addFirstSegment()
        addSecondSegment()
        
        
    }
    
    
}

