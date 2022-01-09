//
//  ViewController.swift
//  Seg1
//
//  Created by Amal on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var segment : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["2", "3" ,"4","5"])
        segment.backgroundColor = UIColor(#colorLiteral(red: 0.8220724463, green: 0.4573150873, blue: 0.5786615014, alpha: 1))
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.addTarget(self, action: #selector(segmentFunc), for:  .valueChanged)
        return segment
    }()
    var segment2 : UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.selectedSegmentIndex = 1
        segment.backgroundColor = UIColor(#colorLiteral(red: 0.8220724463, green: 0.4573150873, blue: 0.5786615014, alpha: 1))
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(segment)
        view.addSubview(segment2)
        
        NSLayoutConstraint.activate([
            segment.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segment.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            segment.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
        NSLayoutConstraint.activate([
            segment2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segment2.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            segment2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
        ])
    }
    
    @objc func segmentFunc() {
        switch segment.selectedSegmentIndex {
        case 0:
            let seg = ["Amal" ,"Amal"]
            loop(seg)
        case 1:
            let seg = ["1" ,"2", "3"]
            loop(seg)
        case 2:
            let seg = ["Abha" ,"Abha", "Abha", "Abha"]
            loop(seg)
        case 3:
            let seg = ["🍭" ,"🍭", "🍭", "🍭", "🍭"]
            loop(seg)
        default:
            print("")
            
        }
    }
    //MARK: - Helper function
    func loop(_ seg:Array<String>) {
        segment2.removeAllSegments()
        for segment in seg {
            segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
        }
    }
}
