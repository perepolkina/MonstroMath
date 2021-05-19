import AVFoundation // music from site //https://freepd.com/horror.php
import Foundation

class Sounds {
    static var audioPlayer: AVAudioPlayer!

    static func play(sound: String, type: String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
           do {
               //Doesn't stop background music
               _ = try? AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default, options: .mixWithOthers)
               //Load & play sound
               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.play()
           } catch {
               print("Error playing sound")
           }
        }
    }
}

/*class MusicPlayer {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?

    func startBackgroundMusic() {
        if let bundle = Bundle.main.path(forResource: "Creepy", ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
}*/
