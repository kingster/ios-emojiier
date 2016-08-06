//
//  ViewController.swift
//  emojifier
//
//  Created by Kinshuk  Bairagi on 06/08/16.
//  Copyright © 2016 Kinshuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    let emj = Emojifier()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.layer.borderColor  = UIColor.blueColor().CGColor
        textView.layer.borderWidth = 2.0
        textView.becomeFirstResponder()
        //textView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textViewDidChange(textView: UITextView){
       textView.text = emj.emojify(textView.text)
    }
    


}

