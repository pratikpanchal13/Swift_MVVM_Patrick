//
//  viewCarousel.swift
//  Swift_MVVM_Patrick
//
//  Created by indianic on 14/04/17.
//  Copyright © 2017 indianic. All rights reserved.
//

import UIKit

class viewCarousel: UIView {
    public var invitedUsers:([String], _ index:Int)->() = {_ in}
    public var dataPass:(_ index:Int)->() = {_ in}


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //call function
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
        //fatalError("init(coder:) has not been implemented")
    }
    
    
    
    @IBAction func btnDismiss(_ sender: Any) {
    
        
        self.invitedUsers(["1","2","3"], 1234567) // Call back Block
        self.dataPass(786)
        self.removeFromSuperview()

        

    }
    
    class func instanceFromNib() -> viewCarousel {
        return UINib(nibName: "viewCarousel", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! viewCarousel
    }
    
}
