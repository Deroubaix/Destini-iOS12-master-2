//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know accidental traffic accidents are the second leading couse of accidental death for most adult age groups? "
  
    let answer4a = "You stab him until you feel your arms numb."
    let answer4b = "I\'m sorry, i thought you were going to kill me."
  
    let story5 = "The mans screams in pain while you stab him in the chest missing his heart. The car starts moving to the sidewalk. Blood it\'s coming down his wound. Your heart is racing while hearing his horrendeous screaming. You panick and pull the knife out of his chest. \"You motherfucker!\". The man screams while stopping the car and grabbing you by your shirt."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
  
  let story7 = "You drop down in your seat to tired to move, blood dripping down your face. You look at the deadless eyes of the man staring at you. His face to disfigured you couldn\'t recognize him from 10 minutes ago. You reach down to your cellphone. Hands trembling you call 911. \"Nine one one, what\'s your emergency?\". You hear the soft voice of a lady on the other side of the line. You panick and freeze not knowing what to say, the smell of sweet blood starts becoming to unbearable and you puke all over you. You turn off your cellphone. You get out of the car, open the driver\'s door and pull the dead man out of the front seat and you put him inside the trunck of the car. You start the car and say: \"I better go to the pier to dump this body.\" "
  
    let story8 = "\"And who said a wasn\'t?\" said the man roaring with laughter, eyes wide open, you could clearly see the red veins popping from his eyes. His tongue is going through his teeth while saliva comes down streeming from his mouth. \"You are going to be my dinner you little mouse!\" Horrified with fear you try reaching for the door knob of the car. You did not even realize he took the icy knife from your hand and thrusted through your skin and flesh over and over again. Life starts to fade and the sickening laughter of the man you just met starts getting lower and lower until all there is, is the icy silence around you. "
    
  
  var storyIndex = 1
  
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
  @IBOutlet weak var restartOutlet: UIButton!
  
  // TODO Step 5: Initialise instance variables here
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
      
        restart()
      
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
      if sender.tag == 1 && storyIndex == 1 {
        storyTextView.text = story3
        topButton.setTitle(answer3a, for: .normal)
        bottomButton.setTitle(answer3b, for: .normal)
        storyIndex = 3
        
      } else if sender.tag == 2 && storyIndex == 1 {
        storyTextView.text = story2
        topButton.setTitle(answer2a, for: .normal)
        bottomButton.setTitle(answer2b, for: .normal)
        storyIndex = 2
        
      } else if sender.tag == 1 && storyIndex == 3 {
        storyTextView.text = story6
        topButton.isHidden = true
        bottomButton.isHidden = true
        storyIndex = 6
        
      } else if sender.tag == 2 && storyIndex == 3 {
        storyTextView.text = story5
        topButton.setTitle(answer4a, for: .normal)
        bottomButton.setTitle(answer4b, for: .normal)
        storyIndex = 5
        
      } else if sender.tag == 2 && storyIndex == 2 {
        storyTextView.text = story4
        topButton.isHidden = true
        bottomButton.isHidden = true
        storyIndex = 4
        
      } else if sender.tag == 1 && storyIndex == 5 {
        storyTextView.text = story7
        topButton.isHidden = true
        bottomButton.isHidden = true
        storyIndex = 7
        
      } else if sender.tag == 2 && storyIndex == 5 {
        storyTextView.text = story8
        topButton.isHidden = true
        bottomButton.isHidden = true
        storyIndex = 8
        
        
      } else if sender.tag == 1 && storyIndex == 2 {
        storyTextView.text = story3
        topButton.setTitle(answer3a, for: .normal)
        bottomButton.setTitle(answer3b, for: .normal)
        storyIndex = 3
      }
      
      if storyIndex == 7 || storyIndex == 6  || storyIndex == 8 || storyIndex == 4{
        
        restartOutlet.isHidden = false
      }
      
      
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    

  @IBAction func restartButtonPressed(_ sender: UIButton) {
    
    restart()
    
  }
  
  func restart() {
    restartOutlet.isHidden = true
    storyIndex = 1
    storyTextView.text = story1
    topButton.setTitle(answer1a, for: .normal)
    bottomButton.setTitle(answer1b, for: .normal)
    topButton.isHidden = false
    bottomButton.isHidden = false
  }
  

}

