//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        var chosen = sender.currentTitle!
        storyBrain.nextStory(input: chosen)
        updateUI()
        
        
    }
    func updateUI (){
        storyLabel.text = storyBrain.stories[storyBrain.currentStory].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.currentStory].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.currentStory].choice2, for: .normal)

    }
    
}

