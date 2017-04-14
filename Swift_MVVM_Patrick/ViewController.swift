//
//  ViewController.swift
//  Swift_MVVM_Patrick
//
//  Created by indianic on 14/04/17.
//  Copyright © 2017 indianic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aViewBottom: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    
    
    @IBAction func btnAddViews(_ sender: Any) {
        
    
        let view = viewCarousel.instanceFromNib()
        self.aViewBottom.addSubview(view)

        
        
        
        // Data Passing Usning Block
 
        view.invitedUsers = { arrayData, selectedIndex in
            
            print("Data is \(arrayData)")
            print("Index Is  \(selectedIndex)")
        }
        
        view.dataPass = { index in
            print("Patrick is \(index)")

        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

