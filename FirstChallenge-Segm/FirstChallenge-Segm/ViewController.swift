//
//  ViewController.swift
//  FirstChallenge-Segm
//
//  Created by Dalal AlSaidi on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {

    
    var segNumbers : UISegmentedControl!
    var segNames : UISegmentedControl!

    let numbers = ["2","3","4"]
    var names = ["Hi! ^^"]
    let backgroundImage = UIImageView(image: UIImage(named: "Gray"))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroundImage)
        firstSegm()
        secondSegm()
    }
    
    //MARK: - Choosing segment Func
    @objc func whenChangeSegmnt(_ segment:UISegmentedControl) {
        switch segment.selectedSegmentIndex {
        case 0:
            let segNames = ["Dalal" ,"AlSaidi"]
            valueChanged(segNames)
        case 1:
            let segNames = ["From" ,"Hail", "!"]
            valueChanged(segNames)
        default:
            let segNames = ["I" ,"LOVE", "SWIFT", "CAMP"]
            valueChanged(segNames)
        }
    }
    
    //MARK: - Loop Func
    func valueChanged(_ segments:Array<String>) {
        segNames.removeAllSegments()
        for segment in segments {
            segNames.insertSegment(withTitle: segment, at: segNames.numberOfSegments, animated: false)
        }
    }
    
    //MARK: - SetupSegments Functions
    fileprivate func firstSegm() {
        let segNumbers = UISegmentedControl(items: numbers)
        segNumbers.translatesAutoresizingMaskIntoConstraints = false
        segNumbers.backgroundColor = .lightGray
        segNumbers.selectedSegmentTintColor = .white
        view.addSubview(segNumbers)
        segNumbers.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        segNumbers.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segNumbers.addTarget(self,
                             action: #selector(whenChangeSegmnt),
                             for: .valueChanged)
    }
    
    fileprivate func secondSegm() {
        segNames = UISegmentedControl(items: names)
        segNames.selectedSegmentIndex = 0
        segNames.translatesAutoresizingMaskIntoConstraints = false
        segNames.backgroundColor = .yellow
        view.addSubview(segNames)
        segNames.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        segNames.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
    
}

