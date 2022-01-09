//
//  ViewController.swift
//  day1Ryadh
//
//  Created by Osama folta on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    let arry1 = ["a" ,"b" ,"c" ,"d" ]
    
    var arry2 = ["s", "w" ,"i", "f" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addControl()
        
        // Do any additional setup after loading the view.
    }
    func addControl() {
        // let segmentItems = ["First", "Second"]
        
        let control = UISegmentedControl(items: arry1)
        control.frame = CGRect(x: 10, y: 250, width: (self.view.frame.width - 20), height: 50)
        view.addSubview(control)
        
        control.addTarget(self, action: #selector(mover), for: .valueChanged)
        
    }
    @objc func mover(sender:UISegmentedControl!){
        var control2 = UISegmentedControl(items: arry2)
        control2.frame = CGRect(x: 10, y: 299, width: (self.view.frame.width - 20), height: 50)
        
        view.addSubview(control2)
        let indexpath = sender.selectedSegmentIndex
        
        //        print(sender.titleForSegment(at: indexpath)!)
        
        if indexpath == 0 {
            
            control2.backgroundColor = .red
            if arry2.count == 1 {
                arry2 = ["s", "w" ,"i", "f" ]
            }
        }
        else if indexpath == 1 {
            control2.backgroundColor = .green
            arry2.removeFirst()
        }else if indexpath == 2 {
            control2.backgroundColor = .blue
            arry2.removeFirst()
        }else  {
            control2.backgroundColor = .cyan
            arry2.removeFirst()
        }
    }
}
