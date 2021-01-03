//
import UIKit
import AVFoundation //Importing AVFoundion

class ViewController: UIViewController {
    
    var player: AVAudioPlayer! //Adding the AVAudioPlayer Class

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
             //Bring's sender's opacity back up to fully opaque.
             sender.alpha = 1.0
         }
    }
        
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav") //Function to play sound in sound folder
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
}


}

