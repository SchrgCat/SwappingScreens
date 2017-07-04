//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Mikołaj Skawiński on 04.07.2017.
//  Copyright © 2017 Mikołaj Skawiński. All rights reserved.
//

import UIKit

fileprivate let nextVC = "PlaySongVC"

class MusicListVC: UIViewController {

    // MARK: - VC's Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    // MARK: - Actions
    
    @IBAction func backBtnPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func load3rdScreenPressed() {
        let songTitle = "Sound of Darkness"
        performSegue(withIdentifier: nextVC, sender: songTitle)
    }
    
    // MARK: - Private Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC, let song = sender as? String {
            destination.selectedSong = song
        }
    }
}
