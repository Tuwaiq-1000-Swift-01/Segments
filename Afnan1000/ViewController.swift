//
// ViewController.swift
// Afnan1000
//
// Created by Afnan Theb on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  
 let mainArray = [ ["1 =)","2 =)","3 =)" ] ,
    [ "1 HiI" , "2 Hi" , "3 Hi" , "4 Hi" , "5 Hi" ] ,
    ["one" , "tow" ] ,
    ["🔷","🔷","🔷" ,"🔷"] ,
    ["6"]]
  
 var select = 0
 var newSC : UISegmentedControl!
 var newSC2 : UISegmentedControl!
  
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view.
 let myView = UIView()
 myView.backgroundColor = .white
 view = myView

 let item = ["1" , "2" , "3", "4" , "5"]
 newSC = UISegmentedControl(items: item)
 newSC.selectedSegmentIndex = 0
  
 newSC.addTarget(self, action: #selector(ShowArryElement(sender:)), for: .valueChanged)
 view.addSubview(newSC)
   
  let scTopConstraint = newSC.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
  let scLeadingConstraint = newSC.leadingAnchor.constraint(equalTo: view.leadingAnchor)
  let scTrailingConstraint = newSC.trailingAnchor.constraint(equalTo: view.trailingAnchor)
  let scHeightConstraint = newSC.heightAnchor.constraint(equalToConstant: 30)
   
  scTopConstraint.isActive = true
  scLeadingConstraint.isActive = true
  scTrailingConstraint.isActive = true
  scHeightConstraint.isActive = true
   
  newSC.translatesAutoresizingMaskIntoConstraints = false
   
  
   
   
   newSC2 = UISegmentedControl(items: mainArray[newSC.selectedSegmentIndex])
   view.addSubview(newSC2)

   let sc2TopConstraint = newSC2.topAnchor.constraint(equalTo: newSC.topAnchor, constant: 150)
   let sc2LeadingConstraint = newSC2.leadingAnchor.constraint(equalTo: view.leadingAnchor)
   let sc2TrailingConstraint = newSC2.trailingAnchor.constraint(equalTo: view.trailingAnchor)
   let sc2HeightConstraint = newSC2.heightAnchor.constraint(equalToConstant: 30)
    
   sc2TopConstraint.isActive = true
   sc2LeadingConstraint.isActive = true
   sc2TrailingConstraint.isActive = true
   sc2HeightConstraint.isActive = true
   newSC2.translatesAutoresizingMaskIntoConstraints = false
 }

 @objc func ShowArryElement ( sender : UISegmentedControl!) {
 select = sender.selectedSegmentIndex
   
 newSC2.removeAllSegments()
   
   for (index, value) in mainArray[select].enumerated() {
     newSC2.insertSegment(withTitle: value, at: index, animated: true)
   }
 }
}















