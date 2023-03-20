//
//  ViewController.swift
//  textFieldHackwich
//
//  Created by Ishan Dhanani on 9/21/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var footballImage: UIImageView!
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        messageTextField.delegate = self
    }

    @IBAction func changeMessageButton(_ sender: Any)
    {
        messageLabel.text = messageTextField.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        messageLabel.text = messageTextField.text
        messageTextField.resignFirstResponder()
        return true
    }
    @IBAction func nflSegment(_ sender: UISegmentedControl)
    {
        if segmentedController.selectedSegmentIndex == 0
        {
            footballImage.image = #imageLiteral(resourceName: "KC.png")
        }
        if segmentedController.selectedSegmentIndex == 1
        {
            footballImage.image = #imageLiteral(resourceName: "SH.jpg")
        }
        if segmentedController.selectedSegmentIndex == 2
        {
            footballImage.image = #imageLiteral(resourceName: "NOS.png")
        }
    }
    
    
    
    
    
}

