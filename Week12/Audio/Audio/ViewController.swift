//
//  ViewController.swift
//  Audio
//
//  Created by Lee Bennett on 4/5/21.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {
    
    var soundId: SystemSoundID = 0
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Find audio file
        let chordApath = Bundle.main.path(forResource: "chordA", ofType: "wav")
        let chordAUrl = URL(fileURLWithPath: chordApath!) as! CFURL
        
        // Create sound id
        AudioServicesCreateSystemSoundID(chordAUrl, &soundId) // 4097
        
        
        // Find audio file
        let eletricIntroPath = Bundle.main.path(forResource: "electricIntro", ofType: "wav")
        let eletricIntroUrl = URL(fileURLWithPath: eletricIntroPath!)
        
        
        player = try! AVAudioPlayer(contentsOf: eletricIntroUrl)
        player.prepareToPlay()
        
    }

    @IBAction func playIntroSoundDidTapped(_ sender: UIButton) {
        player.play()
        
//        player.pause()
//        player.stop()
    }
    
    
    @IBAction func playSoundEffectDidTapped(_ sender: UIButton) {
        AudioServicesPlaySystemSoundWithCompletion(soundId, nil)
        AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate, nil)
    }
    
}

