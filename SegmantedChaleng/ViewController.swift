//
//  ViewController.swift
//  SegmantedChaleng
//
//  Created by Anas Hamad on 06/06/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let arr = ["1","2","3","4"]
    var segmant : UISegmentedControl!
    var segmant2 : UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemBackground
        
        segmant = UISegmentedControl(items: arr)
        segmant.frame = CGRect(x: 20, y: 200, width: 200, height: 50)
        
        segmant2 = UISegmentedControl(items: arr)
        segmant2.frame = CGRect(x: 20, y: 300, width: 300, height: 50)
        
        
        view.addSubview(segmant)
        view.addSubview(segmant2)
        
        
        segmant.addTarget(self, action: #selector(addSegmant(_:)), for: .valueChanged)
        
    }
    
    @objc func addSegmant(_ sender : Any) {
        switch segmant.selectedSegmentIndex{
        case 0 :
            
            changer(chang: .first)
        case 1 :
            
            changer(chang: .seco)
        case 2 :
            
            changer(chang: .ther)
        case 3 :
            
            changer(chang: .fouth)
            
        default :
            print(arr)
            
            
        }
    }
    
    
    func changer(chang:ChangInput){
        
        
        switch chang {
        case .first :
            let arr1 = ["Anas"]
            segmant2.removeAllSegments()
            for segmants in arr1 {
                segmant2.insertSegment(withTitle: segmants, at: segmant2.numberOfSegments, animated: true)
                
            }
            
        case .seco :
            let arr2 = ["Name", "Age","nationlety"]
            segmant2.removeAllSegments()
            for segmants in arr2 {
                segmant2.insertSegment(withTitle: segmants, at: segmant2.numberOfSegments, animated: true)
                
            }
        case .ther :
            let arr3 =  ["Fahad","Khaled","Mohammed"]
            segmant2.removeAllSegments()
            for segmants in arr3 {
                segmant2.insertSegment(withTitle: segmants, at: segmant2.numberOfSegments, animated: true)
                
            }
        case .fouth:
            
            let arr4 =  ["saudi","Kwait","qatar","emarits"]
            segmant2.removeAllSegments()
            for segmants in arr4 {
                segmant2.insertSegment(withTitle: segmants, at: segmant2.numberOfSegments, animated: true)
                
            }
        default :
            print(arr)
            
        }
        
    }
    
    
    
}

