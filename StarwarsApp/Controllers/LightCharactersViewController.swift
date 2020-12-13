//
//  LightCharactersViewController.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 10/12/2020.
//

import UIKit

class LightCharactersViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    private let characterRepository = CharacterRepository()
    private var characters: Characters = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        tableView?.register(UINib(nibName: "CharacterTableCellView",
                                  bundle: nil),
                            forCellReuseIdentifier: "CharacterTableCellView")
        
        tableView?.dataSource = self
        tableView?.delegate = self
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.title = "Light Side Characters"
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? CharacterDetailViewController, let data = sender as? Character else{
            return
        }
        
        destination.character = data
        
        
        
    }
    
    private func loadData() {
        characters = characterRepository.characterSample.filter({ character in
            return character.side.sideName == .light
        })
    }
    
    
}


extension LightCharactersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterTableCellView", for: indexPath) as? CharacterTableCellView
        
        if(indexPath.row < characters.count) {
            cell?.configureViews(character: characters[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row < characters.count){
            performSegue(withIdentifier: "SEGUE_FROM_LIGHTCHARACTER_TO_DETAIL", sender: characters[indexPath.row])
            
        }
        
        
        
        
    }
    
    
}
