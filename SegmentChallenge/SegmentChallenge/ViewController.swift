//
//  ViewController.swift
//  Challenge1
//
//  Created by Majed Alshammari on 06/06/1443 AH.
//

import UIKit


class ViewController: UIViewController {
    
    
    var segmentControl = UISegmentedControl()
    var titleSegmentControl = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        segmentConfigure()
        subviews()
    }
    
    func segmentConfigure(){
        let items = ["1","2","3","4"]
        segmentControl = UISegmentedControl(items: items)
        segmentControl.frame = CGRect(x: 35, y: 200, width: 250, height: 50)
        segmentControl.addTarget(self, action: #selector(segmentAction), for: .valueChanged)
        

        titleSegmentControl.frame = CGRect(x: 35, y: 300, width: 280, height: 50)
    }
    
    func subviews(){
        view.addSubview(titleSegmentControl)
        view.addSubview(segmentControl)
    }
    
    
    @objc func segmentAction(_ segmentControl: UISegmentedControl) {
        
        switch segmentControl.selectedSegmentIndex {
        case 0:
            let items = ["Majed","Hamad"]
            titleSegmentControl.removeAllSegments()
            for item in items {
                titleSegmentControl.insertSegment(withTitle: item, at: titleSegmentControl.numberOfSegments, animated: true)
            }
        case 1:
            let items = ["Majed","Hamad","Yaser"]
            titleSegmentControl.removeAllSegments()
            for item in items {
                titleSegmentControl.insertSegment(withTitle: item, at: titleSegmentControl.numberOfSegments, animated: true)
            }
        case 2:
            let items = ["Majed","Hamad","Yaser","Sami"]
            titleSegmentControl.removeAllSegments()
            for item in items {
                titleSegmentControl.insertSegment(withTitle: item, at: titleSegmentControl.numberOfSegments, animated: true)
            }
        case 3:
            let items = ["Majed","Hamad","Yaser","Sami","Fahad"]
            titleSegmentControl.removeAllSegments()
            for item in items {
                titleSegmentControl.insertSegment(withTitle: item, at: titleSegmentControl.numberOfSegments, animated: true)
            }
            
        default:
            print("")
        }
    }
}



