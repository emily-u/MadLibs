//
//  otherViewController.swift
//  MadLibs
//
//  Created by Emily on 1/17/18.
//  Copyright © 2018 Emily. All rights reserved.
//


import UIKit

class OtherViewController: UIViewController {
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var third: UITextField!
    @IBOutlet weak var fourth: UITextField!
    
    @IBOutlet weak var secondPageBtn: UIButton!
    var output:String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("here")
        let destination = segue.destination as! ViewController
        destination.madlibs.text = "We are having a perfectly \(first.text!) time now. Later we will \(second.text!) and \(third.text!) in the \(fourth.text!)."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        secondPageButton.setTitle(output, for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToThisViewController", sender: self)
    }
    
}
