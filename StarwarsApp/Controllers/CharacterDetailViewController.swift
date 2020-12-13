//
//  CharacterDetailViewController.swift
//  StarwarsApp
//
//  Created by Osvaldo Chaparro on 11/12/2020.
//

import UIKit
import AVFoundation

class CharacterDetailViewController: UIViewController {
    
    
    @IBOutlet var collectionView: UICollectionView?
    @IBOutlet weak var collectionViewWidthConstraint: NSLayoutConstraint?
    @IBOutlet var episodieI: UIImageView?
    @IBOutlet var episodieII: UIImageView?
    @IBOutlet var episodieIII: UIImageView?
    @IBOutlet var episodieIV: UIImageView?
    @IBOutlet var episodieV: UIImageView?
    @IBOutlet var episodieVI: UIImageView?
    @IBOutlet var episodieVII: UIImageView?
    @IBOutlet var episodieVIII: UIImageView?
    @IBOutlet var episodieIX: UIImageView?
    @IBOutlet var favoriteButton: UIButton?
    @IBOutlet var biographyLabel: UILabel?
    @IBOutlet var playButton: UIButton?
    
    
    @IBAction func favoriteClick(_ sender: UIButton) {
    
        manageFav()
    
    }
    
    @IBAction func playClick(_ sender: UIButton) {
        
        playCharacterSound()
        
    }
    
    var character: Character? = nil
    var imageNames = [""]
    var currentImage = 0
    
    var characterEffect: AVAudioPlayer?
    
    private let screenWidth = UIScreen.main.bounds.width
    private var numberOfImages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        configureGesture()

        //delegate y datasource
        collectionView?.delegate = self
        collectionView?.dataSource = self
                        
    }
    
    private func configureView() {
        
        //Titulo
        navigationItem.title = character?.name
        
        //obtengo el número de imagenes de la galería
        numberOfImages = character?.images.count ?? 0
        
        //modifico el ancho del collection view de las imágenes
        //en función del numero de imágenes que tenga el personaje y del ancho de la pantalla
        collectionViewWidthConstraint?.constant = CGFloat(numberOfImages)*screenWidth
        
        //Description
        biographyLabel?.text = character?.biography
        
        
        //Imágenes de los episodios
        if let episodies = character?.episodies{
            for episody in episodies {
                switch episody {
                case .I:
                    episodieI?.image = UIImage(named: "I-on")
                case .II:
                    episodieII?.image = UIImage(named: "II-on")
                case .III:
                    episodieIII?.image = UIImage(named: "III-on")
                case .IV:
                    episodieIV?.image = UIImage(named: "IV-on")
                case .V:
                    episodieV?.image = UIImage(named: "V-on")
                case .VI:
                    episodieVI?.image = UIImage(named: "VI-on")
                case .VII:
                    episodieVII?.image = UIImage(named: "VII-on")
                case .VIII:
                    episodieVIII?.image = UIImage(named: "VIII-on")
                case .IX:
                    episodieIX?.image = UIImage(named: "IX-on")
                
                }
            }
        }
        
        //boton fav
        if let favorite = character?.favorite {
            favoriteButton?.isSelected = favorite
        }
        
        
        
        
        //boton play
        if(character?.sounds.count == 0) {
            playButton?.isHidden = true
        }
        
    }
    
    private func manageFav() {
        
        favoriteButton?.isSelected.toggle()
        

    }
    
    private func playCharacterSound() {
        
        //saco el audio del personaje
                
        if let sound = character?.sounds[0] {
            
            let path = Bundle.main.path(forResource: sound, ofType:nil)!
            let url = URL(fileURLWithPath: path)

            do {
                characterEffect = try AVAudioPlayer(contentsOf: url)
                characterEffect?.play()
            } catch {
                
            }
            
        }
            
        
        
        
        
    }
    
    private func configureGesture() {
        
        //Configura los gestos
        let SwipeLeft = UISwipeGestureRecognizer()
        let SwipeRight = UISwipeGestureRecognizer()
        
        SwipeLeft.direction = .left
        SwipeRight.direction = .right
        
        collectionView?.addGestureRecognizer(SwipeLeft)
        collectionView?.addGestureRecognizer(SwipeRight)
        
        SwipeLeft.addTarget(self, action: #selector(Swipe(sender:)))
        SwipeRight.addTarget(self, action: #selector(Swipe(sender:)))
        
    }
    
    
    
    //Funcion a la que llama el gesto para cambiar la imagen mostrada
    @objc func Swipe(sender: UISwipeGestureRecognizer){
        switch sender.direction {
        case .left:
            
            if currentImage == (character?.images.count ?? 1) - 1 {
                
                //Evito que se haga la animacion hacia la izquierda cuando estoy en la ultima imagen
                    
                if let myCollectionView = collectionView {
                    UIView.transition(with: myCollectionView,
                                      duration: 0.2,
                                      options: .curveEaseOut,
                                      animations: {
                                        myCollectionView.transform = CGAffineTransform(translationX: -((UIScreen.main.bounds.width)*CGFloat(self.currentImage)+(50.0)), y: 0)
                                      },
                                      completion: {_ in
                                        
                                        UIView.transition(with: myCollectionView,
                                                          duration: 0.2,
                                                          options: .curveEaseOut,
                                                          animations: {
                                                            myCollectionView.transform = CGAffineTransform(translationX: -(UIScreen.main.bounds.width)*CGFloat(self.currentImage), y: 0)
                                                          },
                                                          completion: nil)
                                      })
                    
                }
                
            }else{
                
                currentImage += 1
                
                if let myCollectionView = collectionView {
                    UIView.transition(with: myCollectionView,
                                      duration: 0.5,
                                      options: .curveEaseOut,
                                      animations: {
                                        myCollectionView.transform = CGAffineTransform(translationX: -(UIScreen.main.bounds.width)*CGFloat(self.currentImage), y: 0)
                                      },
                                      completion: nil)
                }
                
                
            }
            
            
            
            
        case .right:
                        
            if currentImage == 0 {
                                
                //Evito que se haga la animacion hacia la derecha cuando estoy en la primera imagen
                    
                if let myCollectionView = collectionView {
                    UIView.transition(with: myCollectionView,
                                      duration: 0.2,
                                      options: .curveEaseOut,
                                      animations: {
                                        myCollectionView.transform = CGAffineTransform(translationX: (50.0), y: 0)
                                      },
                                      completion: {_ in
                                        
                                        UIView.transition(with: myCollectionView,
                                                          duration: 0.2,
                                                          options: .curveEaseOut,
                                                          animations: {
                                                            myCollectionView.transform = CGAffineTransform(translationX: (0.0), y: 0)
                                                          },
                                                          completion: nil)
                                      })
                }
                    
                    
                
                
                
            }else{
                
                currentImage -= 1
                
                if let myCollectionView = collectionView {
                    UIView.transition(with: myCollectionView,
                                      duration: 0.5,
                                      options: .curveEaseOut,
                                      animations: {
                                        myCollectionView.transform = CGAffineTransform(translationX: -(UIScreen.main.bounds.width)*CGFloat(self.currentImage), y: 0)
                                      },
                                      completion: nil)
                }
                
            }
            
   
        default:
            break
        }
    }
    
    
    
}

extension CharacterDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let numberOfImages = character?.images.count{
            return numberOfImages
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: screenWidth, height: 300)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionDetailImageCellView",
                                                      for: indexPath) as? CollectionDetailImageCellView
        
        if(indexPath.row < (character?.images.count ?? 0)) {
            cell?.configureViews(imageName: character?.images[indexPath.row] ?? "")
        }
        
        return cell ?? UICollectionViewCell()
        
        
    }
    
    
    
}
