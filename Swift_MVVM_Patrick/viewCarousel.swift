//
//  viewCarousel.swift
//  Swift_MVVM_Patrick
//
//  Created by indianic on 14/04/17.
//  Copyright © 2017 indianic. All rights reserved.
//

import UIKit

class viewCarousel: UIView ,UICollectionViewDelegate,UICollectionViewDataSource {
    
    public var invitedUsers:([String], _ index:Int)->() = {_ in}
    public var dataPass:(_ index:Int)->() = {_ in}

    var aMutArray = ["Iphone","Imac","IPad","IPod"]
    
    @IBOutlet weak var collectionView: UICollectionView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //call function
        
     

        
        let nibName = UINib(nibName: "CellCarousel", bundle:nil)
        self.collectionView.register(nibName, forCellWithReuseIdentifier: "CellCarousel")
        
        self.collectionView.reloadData()

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        let nibName = UINib(nibName: "CellCarousel", bundle:nil)
        self.collectionView.register(nibName, forCellWithReuseIdentifier: "CellCarousel")
        
        self.collectionView.reloadData()


    }

    
    
    
    @IBAction func btnDismiss(_ sender: Any) {
    
        
        self.invitedUsers(["1","2","3"], 1234567) // Call back Block
        self.dataPass(786)
        self.removeFromSuperview()

    

    }
    
    class func instanceFromNib() -> viewCarousel {
        
        
        return UINib(nibName: "viewCarousel", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! viewCarousel
    }
    
    
    class func instanceFromNibCell() -> CellCarousel {
        
        
        return UINib(nibName: "CellCarousel", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CellCarousel
    }
    
//    func loadNib() {
//        
////        let bundle = Bundle(forClass: self)
//        
//
//        
//        let nib = UINib(nibName: "CellCarousel", bundle: nil)
//        let view = nib.instantiate(withOwner: self, options: nil)[0] as! CellCarousel
//        view.frame = bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
////        self.collectionView.register(nib, forCellWithReuseIdentifier: "CellCarousel")
//        self.collectionView.addSubview(view);
//    }
}


extension viewCarousel {
   
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return aMutArray.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellCarousel", for: indexPath as IndexPath) as! CellCarousel
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.lblName.text = aMutArray[indexPath.item]
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
}
