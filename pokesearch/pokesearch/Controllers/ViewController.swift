//
//  ViewController.swift
//  pokesearch
//
//  Created by Vitor on 07/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pokemonName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchPokemon(_ sender: Any) {
        guard let nome = pokemonName.text else { return }
        let showPokemonInfo = ShowPokemonInfo()
        showPokemonInfo.pokemonName = nome
        navigationController?.pushViewController(showPokemonInfo, animated: false)
    }
    
}

