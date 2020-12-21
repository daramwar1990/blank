//
//  CustomTableViewCell.swift
//  DataPassing
//
//  Created by Vinayak Balaji Tuptewar on 27/11/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    var strname:String = ""
    
    var stralpha2code:String = ""
    
  //  label1.text = strname
    


    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
