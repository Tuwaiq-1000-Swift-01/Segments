//
//  ViewController.swift
//  segmentControl
//
//  Created by Aisha Ali on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
  
  
  var array2 = ["Aisha", "Aisha", "Aisha"]
  let array3 = ["Amerah", "Aisha", "Hajer", "Areej"]
  let array4 = ["Aisha", "Remaa", "Reem", "Fouz", "Sara"]
  let array5 = ["Aisha", "Remaa", "Reem", "Fouz", "Sara", "Aisha"]
  var b = [""]
  let segmentedControl2 = UISegmentedControl()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    
    
    
    let segmentedControl = UISegmentedControl(items: ["2","3","4","5"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    
    

    
    segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    
    
    segmentedControl2.backgroundColor = UIColor.systemBackground
    segmentedControl2.selectedSegmentIndex = 0
    segmentedControl2.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl2)
    
    segmentedControl2.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 50).isActive = true

    segmentedControl2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    segmentedControl2.updateTitle(array: array2)

    segmentedControl.addTarget(self, action: #selector(changeSegment), for: .valueChanged)
    
  }
  
  
  
  @objc func changeSegment(_ seg:UISegmentedControl){
    
    switch seg.selectedSegmentIndex {
    case 0 :
      
      b.insert(contentsOf: array2, at: 0)
      segmentedControl2.updateTitle(array: array2)
      //      segmentedControl2.upda
      
      
    case 1:
      b.removeAll()
      b.insert(contentsOf: array3, at: 0)
      segmentedControl2.updateTitle(array: array3)

      
      
      
    case 2:
      segmentedControl2.updateTitle(array: array4)

      
      
    case 3:
      segmentedControl2.updateTitle(array: array5)

   
      
    default:
      break
      
    }
    
    
    
    
    
  }
}

extension UISegmentedControl {
  
  func updateTitle(array titles: [String]) {
    removeAllSegments()
    for t in titles {
      insertSegment(withTitle: t, at: numberOfSegments, animated: true)
    }
    
  }
}


