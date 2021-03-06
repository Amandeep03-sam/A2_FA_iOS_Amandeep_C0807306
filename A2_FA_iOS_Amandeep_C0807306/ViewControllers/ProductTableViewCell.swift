//
//  ProductTableViewCell.swift
//  A2_FA_iOS_Amandeep_C0807306
//
//  Created by Amandeep Kaur on 24/05/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productView: UIView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productProviderNameLabel: UILabel!
    
    @IBOutlet weak var providerNamelLabel: UILabel!
    @IBOutlet weak var productCount: UILabel!
    
    
    
    @IBOutlet weak var providerView: UIView!
    var product: ProductItem?{
        didSet{
            self.productNameLabel.text = product?.productName ?? ""
            self.productProviderNameLabel.text = product?.productProvider ?? ""
            
            
        }
    }
    
    var provider: Provider?{
        didSet{
            self.providerNamelLabel.text = provider?.name
            self.productCount.text = "\(provider?.products.count ?? 0)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.productView.dropShadow()
        self.providerView.dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    

}

extension UIView{
    func dropShadow(){
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 1.5
        self.layer.shadowOpacity = 0.4
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
