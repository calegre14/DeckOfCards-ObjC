//
//  CMACardSwiftViewController.swift
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/8/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

import UIKit

class CMACardSwiftViewController: UIViewController {
    var card: [CMACard]? = []
    
    @IBOutlet weak var cardSuitLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawACard()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func cardButtonTapped(_ sender: UIButton) {
        drawACard()
    }
    
    
    func drawACard() {
        CMACardController.shared()?.drawNewCard(1, completion: { (cards) in
            guard let cards = cards else {return}
            let card = cards[0]
            CMACardController.shared()?.fetchImage(from: card, completion: { (image) in
                guard let image = image else {return}
                DispatchQueue.main.async {
                    self.cardImage.image = image
                    self.cardSuitLabel.text = card.suit
                }
            })
        })
    }
}


