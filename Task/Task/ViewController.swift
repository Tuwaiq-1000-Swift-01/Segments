//
//  ViewController.swift
//  Task
//
//  Created by Jawaher🌻 on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    var segment1 : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["1 ","2 ","3 ","4 ","5"])
        segment.selectedSegmentIndex = 1
        segment.backgroundColor = .gray
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    
    var segment2 : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["1", "2"])
        segment.selectedSegmentIndex = 1
        segment.backgroundColor = .systemGray3
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(segment1)
        view.addSubview(segment2)
        
        segment1.addTarget(self, action: #selector(Segment), for: .valueChanged)
        
        
        NSLayoutConstraint.activate([
            segment1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            segment1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            segment1.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            segment1.widthAnchor.constraint(equalToConstant: 45),
            segment1.heightAnchor.constraint(equalToConstant: 45),
        ])
        
        NSLayoutConstraint.activate([
            segment2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            segment2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            segment2.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            segment2.widthAnchor.constraint(equalToConstant: 45),
            segment2.heightAnchor.constraint(equalToConstant: 45),
        ])
        
    }
    @objc func Segment(_ sender: Any) {
        
        switch segment1.selectedSegmentIndex {
        case 0:
            let segment = ["Jawaher"]
            segment2.removeAllSegments()
            for segment in segment {
                segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
            }
            
        case 1:
            
            let segment = ["1", "2" ]
            segment2.removeAllSegments()
            for segment in segment {
                segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
            }
            
        case 2:
            let segment = ["Jawaher", "IOS" ,  "Developer"]
            segment2.removeAllSegments()
            for segment in segment {
                segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
            }
            
        case 3:
            let segment = ["1", "2", "3",  "4"]
            segment2.removeAllSegments()
            for segment in segment {
                segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
            }
            
        case 4:
            let segment = ["Jawaher", "Amal", "Atheer", "Ibrahim", "Maram"]
            segment2.removeAllSegments()
            for segment in segment {
                segment2.insertSegment(withTitle: segment, at: segment2.numberOfSegments, animated: false)
            }
        default:
            break;
        }
    }
    
    
}

