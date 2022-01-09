//
//  ViewController.swift
//  challenge1
//
//  Created by ibrahim asiri on 06/06/1443 AH.
//

import UIKit


class ViewController: UIViewController {
    
    var segmentControl = UISegmentedControl()
    var segmentResult = UISegmentedControl()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUpCont()
    }
    
    func setUpCont() {
        
        segmentControl = UISegmentedControl(items: ["2", "3", "4", "5"])
        segmentControl.selectedSegmentIndex = 1
        segmentControl.backgroundColor = UIColor(displayP3Red: 75/255, green: 99/255, blue: 170/255, alpha: 1)
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentControl)
        segmentControl.addTarget(self, action: #selector(change), for:  .valueChanged)
        NSLayoutConstraint.activate([
            segmentControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            segmentControl.leftAnchor.constraint(equalTo: view.leftAnchor),
            segmentControl.widthAnchor.constraint(equalToConstant: 280),
            segmentControl.heightAnchor.constraint(equalToConstant: 50)

        ])
        
        segmentResult = UISegmentedControl(items: ["1", "2", "3"])
        segmentResult.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentResult)
        NSLayoutConstraint.activate([
        segmentResult.topAnchor.constraint(equalTo: view.topAnchor, constant: 320),
        segmentResult.leftAnchor.constraint(equalTo: view.leftAnchor),
        segmentResult.widthAnchor.constraint(equalToConstant: 280),
        segmentResult.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func change() {
        
        if segmentControl.selectedSegmentIndex == 0 {
            let seg = ["You" ,"press", "number", "2", "!"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }else if segmentControl.selectedSegmentIndex == 1 {
            let seg = ["this", "is", "index", "ONE"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }else if segmentControl.selectedSegmentIndex == 2 {
            let seg = ["Hello","World"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
            
        }else {
            let seg = ["This is the first day in Riyadh 😎"]
            segmentResult.removeAllSegments()
            for segment in seg {
                segmentResult.insertSegment(withTitle: segment, at: segmentResult.numberOfSegments, animated: false)
            }
        
        }
        
    }
    
}

