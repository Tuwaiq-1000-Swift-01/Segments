//
//  ViewController.swift
//  SegmentsView
//
//  Created by MAC on 08/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    var segNumbers : UISegmentedControl!
    var         segmentedNames : UISegmentedControl!

    let numbers = ["2","3","4"]
    var names = ["Sultan"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstSegm()
        secondSegm()
    }
    
    //MARK: - Choosing segment Func
    @objc func whenChangeSegmnt(_ segment:UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            let a = ["Sultan" ,"Alanzey"]
            valueChanged(a)
        case 1:
            let segNames = ["A" ,"B", "C"]
            valueChanged(segNames)
        default:
            let segNames = ["+" ,"-", "*", "/"]
            valueChanged(segNames)
        }
    }
    
    //MARK: - Loop Func
    func valueChanged(_ segments:Array<String>) {
                segmentedNames.removeAllSegments()
        for segment in segments {
                    segmentedNames.insertSegment(withTitle: segment, at:         segmentedNames.numberOfSegments, animated: false)
        }
    }
    
    //MARK: - SetupSegments Functions
    fileprivate func firstSegm() {
        let segmentedNumbers = UISegmentedControl(items: numbers)
        segmentedNumbers.translatesAutoresizingMaskIntoConstraints = false
        segmentedNumbers.backgroundColor = .yellow
        segmentedNumbers.selectedSegmentTintColor = .white
        view.addSubview(segmentedNumbers)
        segmentedNumbers.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        segmentedNumbers.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segmentedNumbers.addTarget(self,
                             action: #selector(whenChangeSegmnt),
                             for: .valueChanged)
    }
    
    fileprivate func secondSegm() {
                segmentedNames = UISegmentedControl(items: names)
                segmentedNames.selectedSegmentIndex = 0
                segmentedNames.translatesAutoresizingMaskIntoConstraints = false
                segmentedNames.backgroundColor = .green
        view.addSubview(        segmentedNames)
                segmentedNames.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
                segmentedNames.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
}



