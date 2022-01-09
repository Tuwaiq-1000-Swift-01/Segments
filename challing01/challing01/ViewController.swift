//
//  ViewController.swift
//  challing01
//
//  Created by Noura Alahmadi on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var firstSegment = UISegmentedControl()
    var secondSegment = UISegmentedControl()
    let label = UILabel()
    
    func createSegment() {
        firstSegment = UISegmentedControl(items: ["2", "3", "4", "5","Clear"])
        firstSegment.selectedSegmentIndex = 1
        firstSegment.addTarget(self, action: #selector(operation), for:  .valueChanged)
        firstSegment.frame = CGRect(x: 10, y: 250,width: 290, height: 50)
        view.addSubview(firstSegment)
        
        label.text = "Number of index is:  "
        label.frame = CGRect(x: 10, y: 350, width: 200, height: 50)
        view.addSubview(label)
        secondSegment = UISegmentedControl(items: [""])
        secondSegment.frame = CGRect(x: 10, y: 400,width: 290, height: 50)
        
        view.addSubview(secondSegment)
    }
    @objc func operation() {
        switch firstSegment.selectedSegmentIndex{
        case 0:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: String(firstSegment.selectedSegmentIndex), at: secondSegment.numberOfSegments, animated: false)
            break
        case 1:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: String(firstSegment.selectedSegmentIndex), at: secondSegment.numberOfSegments, animated: false)
        case 2:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: String(firstSegment.selectedSegmentIndex), at: secondSegment.numberOfSegments, animated: false)
        case 3:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: String(firstSegment.selectedSegmentIndex), at: secondSegment.numberOfSegments, animated: false)
        default:
            secondSegment.removeAllSegments()
            secondSegment.insertSegment(withTitle: "", at: secondSegment.numberOfSegments, animated: false)
            break
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        createSegment()
    }
}
