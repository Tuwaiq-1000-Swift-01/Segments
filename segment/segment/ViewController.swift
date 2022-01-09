//
//  ViewController.swift
//  segment
//
//  Created by Maram Al shahrani on 06/06/1443 AH.
//

import UIKit


class ViewController: UIViewController {
    
    var firstSegment = UISegmentedControl()
    var secondSegment = UISegmentedControl()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        firstSegment = UISegmentedControl(items: ["2", "3", "4", "5"])
        firstSegment.selectedSegmentIndex = 1
        firstSegment.backgroundColor = .systemGray6
        firstSegment.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstSegment)
        firstSegment.addTarget(self, action: #selector(changeElaments), for:  .valueChanged)
        NSLayoutConstraint.activate([
            firstSegment.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            firstSegment.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            firstSegment.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            firstSegment.widthAnchor.constraint(equalToConstant: 280),
            firstSegment.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        secondSegment = UISegmentedControl(items: ["1", "2", "3"])
        secondSegment.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondSegment)
        NSLayoutConstraint.activate([
            secondSegment.topAnchor.constraint(equalTo: view.topAnchor, constant: 320),
            secondSegment.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            secondSegment.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            secondSegment.widthAnchor.constraint(equalToConstant: 280),
            secondSegment.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func changeElaments() {
        if firstSegment.selectedSegmentIndex == 0 {
            let segment = ["1" , "2"]
            secondSegment.removeAllSegments()
            for segment in segment{
                secondSegment.insertSegment(withTitle: segment, at: secondSegment.numberOfSegments, animated: false)
            }
        }else if firstSegment.selectedSegmentIndex == 1 {
            let segment = ["1","2", "3"]
            secondSegment.removeAllSegments()
            for segment in segment {
                secondSegment.insertSegment(withTitle: segment, at: secondSegment.numberOfSegments, animated: false)
            }
        }else if firstSegment.selectedSegmentIndex == 2 {
            let segment = ["1","2", "3",  "4"]
            secondSegment.removeAllSegments()
            for segment in segment {
                secondSegment.insertSegment(withTitle: segment, at: secondSegment.numberOfSegments, animated: false)
            }
        }else if firstSegment.selectedSegmentIndex == 3 {
            let segment = ["1","2", "3",  "4", "5"]
            secondSegment.removeAllSegments()
            for segment in segment {
                secondSegment.insertSegment(withTitle: segment, at: secondSegment.numberOfSegments, animated: false)
            }
        }
    }
}



