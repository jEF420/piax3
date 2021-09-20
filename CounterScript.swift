//
//  CounterScript.swift
//  CounterScript
//
//  Created by Alexander Karlsson on 2021-09-20.
//

import UIKit
var counter = 0
class CounterScript: UIViewController {
    
    @IBOutlet weak var subButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
        counter += 1
        print("snälla funka")
        showButton()
        counterLabel.text=String(counter)
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        counter=0
        if counter == 0{
            hideButton()
        }
        counterLabel.text = String(counter)

    }
    @IBAction func subButtonPressed(_ sender: Any) {
        if counter > 0{
            counter=counter-1
            if counter == 0{
                hideButton()
            }
        }
        counterLabel.text = String(counter)

    }
    func hideButton(){
        subButton.isEnabled = false
    }
    func showButton(){
        subButton.isEnabled = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counter)
        hideButton()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
