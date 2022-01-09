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
  
  
  let segmentedControl2 : UISegmentedControl = {
    let segmentedControl2 = UISegmentedControl()
    segmentedControl2.translatesAutoresizingMaskIntoConstraints = false
    return segmentedControl2
  } ()
  
  
  let segmentedControl : UISegmentedControl = {
    let segmentedControl = UISegmentedControl(items: ["2","3","4","5"])
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    return segmentedControl
  } ()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  override func loadView() {
    super.loadView()
    
    
    
    view.addSubview(segmentedControl)
    segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    
    
    
    view.addSubview(segmentedControl2)
    segmentedControl2.topAnchor.constraint(equalTo: segmentedControl.topAnchor, constant: 50).isActive = true
    segmentedControl2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    segmentedControl2.updateTitle(array: array2)

    //
    segmentedControl.addTarget(self, action: #selector(changeSegment), for: .valueChanged)
    
  }
  
  
  
  @objc func changeSegment(_ seg:UISegmentedControl){
    
    switch seg.selectedSegmentIndex {
    case 0 :
      segmentedControl2.updateTitle(array: array2)
      
      
    case 1:
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
    selectedSegmentIndex = 0
  }
}


