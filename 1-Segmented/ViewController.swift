//
//  ViewController.swift
//  1-Segmented
//
//  Created by Abdullah Bajaman on 09/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let items = ["1","3","5","7"]
    var view2 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        createSegmented()
    }
    func createSegmented(){
        let seg = UISegmentedControl (items: items)
        
        let xPostion:CGFloat = 10
        let yPostion:CGFloat = 150
        let elementWidth:CGFloat = view.frame.width - 20
        let elementHeight:CGFloat = 30
        
        seg.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        
        // Make second segment selected
        seg.selectedSegmentIndex = 1
        
        //
        self.view.addSubview(seg)
        
        
        // Add function to handle Value Changed events
        seg.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        
    }
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)!
        let intTitle = Int(title)
        addElement(intTitle!)
        
        
    }
    func addElement(_ num: Int){
        print(self.view.subviews.indices)
        
        view2.subviews.last?.removeFromSuperview()

        var element : [String] = []

        for i in 1...num{
            
            element.append("\(i)")
        }
        let secSeg = UISegmentedControl(items: element)
        secSeg.frame = CGRect(x: 10, y: 300, width: view.frame.width - 20, height: 30)
        view2.addSubview(secSeg)
        
        self.view.addSubview(view2)
    }
    
}

