//
//  ViewController.swift
//  FirstTest
//
//  Created by Ameera BA on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {
  
  let array1 = ["Hi", "Hi", "Hi"]
  let array2 = ["ameera", "ameera", "ameera","ameera"]
  let array3 = ["6", "6", "6", "6", "6"]
  
  
  
  var segmented1: UISegmentedControl!
  var segmented2: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  override func loadView() {
    super.loadView()
    self.view.backgroundColor = UIColor(red: 217.0/255.0, green: 171.0/255.0, blue: 218.0/255.0, alpha: 1)
    
    //First segmented
    segmented1 = UISegmentedControl(items: ["1","2", "3"])
    segmented1.selectedSegmentIndex = 0
    segmented1.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
    segmented1.backgroundColor = UIColor.white
    segmented1.addTarget(self, action: #selector(forControll1(_:)), for: .valueChanged)
    segmented1.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(segmented1)
    
    //Second segmented
    segmented2 = UISegmentedControl()
    segmented2.frame = CGRect(x: 80, y: 200, width: 250, height: 40)
    segmented2.backgroundColor = UIColor.white
    segmented2.selectedSegmentIndex = 0
    segmented2.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(segmented2)
    upDatedata(array1)
    }
  
  
  
  func upDatedata(_ controllers: Array<Any>) {
    segmented2.removeAllSegments()
    
    for controller in controllers {
      segmented2.insertSegment(withTitle: "\(controller)",
                               at: segmented2.numberOfSegments,
                               animated: false)
    }
    segmented2.selectedSegmentIndex = 0
  }
  
  
  @objc func forControll1 (_ sender: UISegmentedControl){
    
    switch sender.selectedSegmentIndex {
    case 0:
      upDatedata(array1)
    
    case 1:
      upDatedata(array2)
      
    case 2:
      upDatedata(array3)

    default:
      
      break
    }
  }
}

