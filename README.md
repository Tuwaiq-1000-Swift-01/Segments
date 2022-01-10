# Segments
Create two Segments without using the story, then change the number of items in the second Segment
//
//  ViewController.swift
//  SegmentsView
//
//  Created by MAC on 08/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    var SegmentedNumbers : UISegmentedControl!
    var SegmentedNames : UISegmentedControl!

    let numbers = ["1","2","3","4"]
    var names = [""]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstSegm()
        secondSegm()
    }
    
    //MARK: - Choosing segment Func
    @objc func whenChangeSegmnt(_ segment:UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            let a = ["Sultan"]
            valueChanged(a)
        case 1:
            let segNames = ["1", "2" , "3"]
            valueChanged(segNames)
        case 2:
            let segNames = ["+", "-" , "*" , "/"]
            valueChanged(segNames)
        default:
            let segNames = ["A" ,"B", "C", "D"]
            valueChanged(segNames)
        }
    }
    
    //MARK: - Loop Func
    func valueChanged(_ segments:Array<String>) {
        SegmentedNames.removeAllSegments()
        for segment in segments {
            SegmentedNames.insertSegment(withTitle: segment, at: SegmentedNames.numberOfSegments, animated: false)
        }
    }
    
    //MARK: - SetupSegments Functions
    fileprivate func firstSegm() {
        let SegmentedNumbers = UISegmentedControl(items: numbers)
        SegmentedNumbers.translatesAutoresizingMaskIntoConstraints = false
        SegmentedNumbers.backgroundColor = .yellow
        SegmentedNumbers.selectedSegmentTintColor = .white
        view.addSubview(SegmentedNumbers)
        SegmentedNumbers.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        SegmentedNumbers.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        SegmentedNumbers.addTarget(self,
                             action: #selector(whenChangeSegmnt),
                             for: .valueChanged)
    }
    
    fileprivate func secondSegm() {
        SegmentedNames = UISegmentedControl(items: names)
        SegmentedNames.selectedSegmentIndex = 0
        SegmentedNames.translatesAutoresizingMaskIntoConstraints = false
        SegmentedNames.backgroundColor = .green
        view.addSubview(SegmentedNames)
        SegmentedNames.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        SegmentedNames.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
}
