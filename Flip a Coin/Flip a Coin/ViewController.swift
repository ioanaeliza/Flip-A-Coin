//
//  ViewController.swift
//  Flip a Coin
//
//  Created by mac on 27/01/2017.
//  Copyright © 2017 Ioana Marian. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    @IBOutlet weak var coinLabel: UILabel!
    
    @IBOutlet weak var coinView: UIImageView!
    
    @IBAction func pressCoin(_ sender: UITapGestureRecognizer) {

        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "coinSound", ofType: "mp3")!)
        
        do {
            // Preperation
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
        }
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
        }
        
        // Play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
        } catch _{
        }
        
        audioPlayer.prepareToPlay()
        
        audioPlayer.play()
        
        var coinRandom = coinModel.getRandomCoinToss()
        
        if coinRandom == "Heads" {
            coinView.image = coinImageHeads
            coinLabel.text = "Heads!"
        }
        
        else {
            coinView.image = coinImageTail
            coinLabel.text = "Tails!"
        }
    
        self.coinView.rotate360Degrees()
    
    }
    
    let coinModel = CoinModel()
    
    var coinImageHeads: UIImage = UIImage(named: "coin-silver-woman.png")!
    
    var coinImageTail: UIImage = UIImage (named: "coin-silver-leaf.png")!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    //override func viewDidAppear(_ animated: Bool) {
      //  UIView.transition(from: coinWoman, to: coinLeaf, duration:1, options: .transitionFlipFromLeft, completion: nil)
    //}

}

