//
//  ViewController.swift
//  First_Challenge
//
//  Created by Njoud Alrshidi on 06/06/1443 AH.
//
//
import UIKit

class ViewController: UIViewController {
    
    var segmentedControl1 = UISegmentedControl()
    var segmentedControl2 = UISegmentedControl()
    
    let choices = ["FullName", "Country/City", "Birthday", "Friends"]
    
    let FullName = ["Njoud","Abdulaziz","ALrasheedi"]
    let City = ["Saudi Arabi","Hail"]
    let Birthday = ["29","11","1997"]
    let Friends = ["Jood","Rahf","Asma", "Nada","Sara"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleSegmentedControl()
        detailsSegmentedControl()
        
       }
    
    func titleSegmentedControl() {
        
        let segmentedControl = UISegmentedControl (items: choices )
        
        let xPostion:CGFloat = 35
        let yPostion:CGFloat = 150
        let elementWidth:CGFloat = 350
        let elementHeight:CGFloat = 45
        
        segmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        
        segmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
     
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(segmentedControl)
    }
    
    func detailsSegmentedControl() {
        
        let xPostion:CGFloat = 60
        let yPostion:CGFloat = 300
        let elementWidth:CGFloat = 300
        let elementHeight:CGFloat = 45
        
        segmentedControl2.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        
       segmentedControl2.translatesAutoresizingMaskIntoConstraints = false
       self.view.addSubview(segmentedControl2)
        
         }
    
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
          let segmentedControllers = FullName
          segmentedControl2.removeAllSegments()
          for segmentedControl in segmentedControllers {
            segmentedControl2.insertSegment(withTitle: segmentedControl, at: segmentedControl2.numberOfSegments, animated: false)
            }
        case 1:
         let segmentedControllers = City
        segmentedControl2.removeAllSegments()
            for segmentedControl in segmentedControllers {
            segmentedControl2.insertSegment(withTitle: segmentedControl, at: segmentedControl2.numberOfSegments, animated: false)
            }
       case 2:
        let segmentedControllers = Birthday
        segmentedControl2.removeAllSegments()
        for segmentedControl in segmentedControllers {
        segmentedControl2.insertSegment(withTitle: segmentedControl, at: segmentedControl2.numberOfSegments, animated: false)
            }
       case 3:
        let segmentedControllers = Friends
        segmentedControl2.removeAllSegments()
        for segmentedControl in segmentedControllers {
        segmentedControl2.insertSegment(withTitle: segmentedControl, at: segmentedControl2.numberOfSegments, animated: false)
            }
    default:
            break
                        
                    }
                    print("Selected Segment Index: \(sender.selectedSegmentIndex)")
                    
                }
                
            }
 
