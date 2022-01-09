//
//  ViewController.swift
//  Prototype-UIStatement
//
//  Created by Marzouq Almukhlif on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
  
  var segmentedControlTwo:UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupSegment()
  }
  
  
  // MARK: - configure segments
  
  func setupSegment() {
    
    let segmentedControlOne = UISegmentedControl(items: ["1", "2", "3","4","5"])
    segmentedControlOne.selectedSegmentIndex = 0
    segmentedControlOne.addTarget(self,
                                  action: #selector(segmentedControlOnePressed),
                                  for: .valueChanged)
    
    segmentedControlOne.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControlOne)
    
    let margins = view.layoutMarginsGuide
    
    segmentedControlOne.topAnchor.constraint(
      equalTo: view.safeAreaLayoutGuide.topAnchor,
      constant: 8).isActive = true
    
    segmentedControlOne.leadingAnchor.constraint(
      equalTo: margins.leadingAnchor).isActive = true
    
    segmentedControlOne.trailingAnchor.constraint(
      equalTo: margins.trailingAnchor).isActive = true
    
    
    
    
    segmentedControlTwo = UISegmentedControl(items:["One"])
    segmentedControlTwo.selectedSegmentIndex = 0
    
    segmentedControlTwo.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControlTwo)
    
    segmentedControlTwo.topAnchor.constraint(
      equalTo: segmentedControlOne.bottomAnchor,
      constant: 20).isActive = true

    segmentedControlTwo.leadingAnchor.constraint(
      equalTo: margins.leadingAnchor).isActive = true
    segmentedControlTwo.trailingAnchor.constraint(
      equalTo: margins.trailingAnchor).isActive = true
    
    
    
    
    
  }
  
  // MARK: - Update segments
  
  @objc func segmentedControlOnePressed(_ segment:UISegmentedControl) {
    
    switch segment.selectedSegmentIndex {
      
    case 0:
      print("1")
      let segments = ["One"]
      updateSegmentTwo(segments)
      
    case 1:
      print("2")
      let segments = ["5","9"]
      updateSegmentTwo(segments)
      
    case 2:
      print("3")
      let segments = ["ahmad","ahmad","ahmad"]
      updateSegmentTwo(segments)
      
    case 3:
      print("4")
      let segments = ["gg","gg","gg","gg"]
      updateSegmentTwo(segments)
      
    case 4:
      print("5")
      let segments = ["ali","ali","ali","ali","ali"]
      updateSegmentTwo(segments)
      
    default:
      print("default")
    }
    
    
  }
  
  
  
  func updateSegmentTwo(_ segments:Array<String>) {
    
    segmentedControlTwo.removeAllSegments()
    for segment in segments {
      segmentedControlTwo.insertSegment(withTitle: segment, at: segmentedControlTwo.numberOfSegments, animated: false)
    }
    segmentedControlTwo.selectedSegmentIndex = 0
    
    
  }
  
  
  
  
  
}

