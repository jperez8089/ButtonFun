//
//  ViewController.swift
//  ButtonFun
//
//  Created by Javier Perez on 2/14/18.
//  Copyright © 2018 Javier Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        statusLabel.text = text
        
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSFontAttributeName: UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)]
        
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

