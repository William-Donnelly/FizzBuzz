//
//  ViewController.swift
//  FizzBuzz
//
//  Created by The Real Kaiser on 8/21/18.
//  Copyright © 2018 William Donnelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Counter: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        if((count+1) % 15 == 0){
            Counter.text = "FizzBuzz"
            count += 1
            view.backgroundColor = UIColor.red
        }
        else if((count+1) % 3 == 0){
            Counter.text! = "Fizz"
            count += 1
            view.backgroundColor = UIColor.green
        }
        else if((count+1) % 5 == 0){
            Counter.text! = "Buzz"
            count += 1
            view.backgroundColor = UIColor.yellow
        }
        else{
            count += 1
            Counter.text! = String(count)
            
            if(view.backgroundColor != UIColor.black){
                view.backgroundColor = UIColor.black
            }
        }
    }
    
    @IBAction func longTap(_ sender: UILongPressGestureRecognizer) {
        view.backgroundColor = UIColor.black
        count = 0
        Counter.text! = String(count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

