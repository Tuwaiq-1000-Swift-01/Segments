//
//  ViewController.swift
//  segment
//
//  Created by HAJAR on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {

  let segmentedControl1 = UISegmentedControl(
    items: ["1","2","3","4"])
  
  let segmentedControl2 = UISegmentedControl()
  
  let arr1 = ["1","2"]
  let arr2 = ["1","2","3"]
  let arr3 = ["1","2","3","4"]
  let arr4 = ["1","2","3","4", "5"]
  
  
  
  override func loadView() {
    super.loadView()
    
    view.addSubview(segmentedControl1)
    
    segmentedControl1.selectedSegmentIndex = 0
    
    segmentedControl1.addTarget(self,
                                action: #selector(segmentedControlPressed(_:)), for: .valueChanged)
    
    segmentedControl1.translatesAutoresizingMaskIntoConstraints = false

    let topConstraint = segmentedControl1.topAnchor.constraint(
      equalTo: view.safeAreaLayoutGuide.topAnchor,
      constant: 100).isActive = true


    let margins = view.layoutMarginsGuide

    let leadingConstraint
    = segmentedControl1.leadingAnchor.constraint(equalTo:margins.leadingAnchor).isActive = true


    let trailingConstraint
    = segmentedControl1.trailingAnchor.constraint(
      equalTo: margins.trailingAnchor).isActive = true
    
    //------------------
    
    view.addSubview(segmentedControl2)
    
    segmentedControl2.selectedSegmentIndex = 0
    
    segmentedControl2.translatesAutoresizingMaskIntoConstraints = false

    let topConstraint2 = segmentedControl2.topAnchor.constraint(
      equalTo: segmentedControl1.bottomAnchor,
      constant: 50)
      topConstraint2.isActive = true


    let margins2 = view.layoutMarginsGuide

    let leadingConstraint2
    = segmentedControl2.leadingAnchor.constraint(equalTo:margins2.leadingAnchor)
      leadingConstraint2.isActive = true


    let trailingConstraint2
    = segmentedControl2.trailingAnchor.constraint(
      equalTo: margins2.trailingAnchor)
      topConstraint2.isActive = true
    
    
    segmentedControlPressed2(sender: arr1)

    
  }
  
  

  @objc func segmentedControlPressed(_ seg: UISegmentedControl){
    switch seg.selectedSegmentIndex {

    case 0 :
      
      segmentedControlPressed2(sender: arr1)

    case 1 :
      segmentedControlPressed2(sender: arr2)

    case 2 :
      segmentedControlPressed2(sender: arr3)

    case 3:
      segmentedControlPressed2(sender: arr4)

    default:
      break
    }
  }
  
  
  func segmentedControlPressed2(sender : [String]){
    
    segmentedControl2.removeAllSegments()
    for a in sender {
      segmentedControl2.insertSegment(withTitle: a, at: segmentedControl2.numberOfSegments  , animated: false)

    }

}

}
