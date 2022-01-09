//
//  ViewController.swift
//  SegmentedControl
//
//  Created by A A on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {
  
  let firstArray = ["1","2"]
  let secondArray = ["1","2","3"]
  let thirdArray = ["1","2","3","4"]
  let forthArray = ["1","2","3","4","5"]
  
  var firstSegmentedControl = UISegmentedControl()
  var secondSegmentedControl = UISegmentedControl()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //Add SegmentedControls
    firstSegmentedControl = UISegmentedControl(items: ["1","2","3","4"])
    firstSegmentedControl.backgroundColor = UIColor.systemBackground
    firstSegmentedControl.selectedSegmentIndex = 0
    firstSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
    
    secondSegmentedControl = UISegmentedControl(items: firstArray)
    secondSegmentedControl.backgroundColor = UIColor.systemBackground
    secondSegmentedControl.selectedSegmentIndex = 0
    secondSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(firstSegmentedControl)
    view.addSubview(secondSegmentedControl)
    
    firstSegmentedControl.addTarget(
      self,
      action: #selector(change), for: .valueChanged)
    
    
    let margins = view.layoutMarginsGuide
    
    
    //Add Constraints and Activate constraints
    NSLayoutConstraint.activate([ firstSegmentedControl.topAnchor.constraint(equalTo:
                                                                              view.safeAreaLayoutGuide.topAnchor,constant: 100),
                                  firstSegmentedControl.leadingAnchor.constraint(equalTo:
                                                                                  margins.leadingAnchor),
                                  firstSegmentedControl.trailingAnchor.constraint(equalTo:
                                                                                    margins.trailingAnchor),
                                  secondSegmentedControl.topAnchor.constraint(equalTo:
                                                                                firstSegmentedControl.bottomAnchor,constant: 10),
                                  secondSegmentedControl.leadingAnchor.constraint(equalTo:
                                                                                    margins.leadingAnchor),
                                  secondSegmentedControl.trailingAnchor.constraint(equalTo:
                                                                                    margins.trailingAnchor)
                                  
    ])
    
  }
  
  
  @objc func change(_ seg: UISegmentedControl){
    
    switch seg.selectedSegmentIndex {
    case 0:
      update(sender: firstArray)
    case 1:
      update(sender: secondArray)
    case 2:
      update(sender: thirdArray)
    case 3:
      update(sender: forthArray)
      
    default:
      break
    }
    
  }
  
  
  func update(sender:[String]){
    secondSegmentedControl.removeAllSegments()
    for i in sender {
      secondSegmentedControl.insertSegment(withTitle: i, at: secondSegmentedControl.numberOfSegments, animated: false)
    }
  }
  
}

