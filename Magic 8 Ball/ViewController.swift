//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Akshay Dattaguru on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {
//this is the button to start asking questions.
    @IBOutlet weak var askButton: UIButton!
    
   //this is the list of the the possible answers
    var answers = ["Maybe","Definetly","Probably not","Most Likely","No way!","In your dreams","100%", "Ask again later","Doun't count on it","Concentrate and ask again", "Reply hazy, try again", "No!","No","BIG NO","Yes","Quite Likely","Yes, as sure as the sun will rise","That is for you to figure out..."]
   
    //this makes it possible for changing the button to a start or stop button.
    var startOrEnd = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        askButton.setTitle("Ask a yes or no question",for: .normal)
        
    }
//Based on if the button is a start or stop button the text will change. 
    @IBAction func askMeButtonPressed(_ sender: Any) {
        if startOrEnd == true{
            askButton.setTitle("Ask a yes or no question", for: .normal)
            startOrEnd = true;
            
            //put the possible answers into the array. It is less than 18 because there are 18 different answers I have set up for my magic 8 ball. So it will choose one of them.
            let randomAnswer = Int.random(in: 0..<18)
            //this displays the answer as an alert
            displayEndGameAlert(message: answers[randomAnswer])
            
        }
    }//Alert Controller
    func displayEndGameAlert(message: String){
        
        //Plug in what the text says in the alert.
        let alertController = UIAlertController(title: "The magic 8 ball has given an answer", message: message, preferredStyle: .alert)
        
        //make a button to reset the game. Named the button.
        let alertAction = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)





}





}
