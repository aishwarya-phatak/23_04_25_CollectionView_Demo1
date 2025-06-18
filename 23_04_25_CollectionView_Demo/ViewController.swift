//
//  ViewController.swift
//  23_04_25_CollectionView_Demo
//
//  Created by Vishal Jagtap on 16/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var productCollectionView: UICollectionView!
    let reuseIdentifierForCell = "ProductCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
        registerCellWithCollectionView()
    }
    
    func initViews(){
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    
    func registerCellWithCollectionView(){
        let uiNib = UINib(nibName: reuseIdentifierForCell, bundle: nil)
        self.productCollectionView.register(uiNib, forCellWithReuseIdentifier: reuseIdentifierForCell)
    }
}

extension ViewController : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let productCollectionViewCell = self.productCollectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForCell, for: indexPath) as! ProductCollectionViewCell
        
        return productCollectionViewCell
    }
}


extension ViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = self.productCollectionView.frame.width/3
        let cellHeight: CGFloat = cellWidth
        
        print(self.productCollectionView.frame.width)
        print(cellWidth)
        print(cellHeight)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
