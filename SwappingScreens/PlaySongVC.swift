//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Mikołaj Skawiński on 04.07.2017.
//  Copyright © 2017 Mikołaj Skawiński. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var songTitleLbl: UILabel!
    
    // MARK: - Properties
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }
        
        set {
            _selectedSong = newValue
        }
    }
    
    // MARK: VC's Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
    }
}
