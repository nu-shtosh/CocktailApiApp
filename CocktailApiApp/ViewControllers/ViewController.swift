//
//  ViewController.swift
//  CocktailApiApp
//
//  Created by Илья Дубенский on 08.11.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var descriptionTextView: UITextView!
    @IBOutlet var cocktailImage: UIImageView! {
        didSet {
            cocktailImage.layer.cornerRadius = cocktailImage.frame.width / 2
        }
    }
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        showSpinner(in: cocktailImage)
        fetchCocktails()
    }

    // MARK: - IBActions
    @IBAction func getRandomCocktailButtonDidTapped() {
        showSpinner(in: cocktailImage)
        fetchCocktails()
    }
    
}

// MARK: - Private Methods
extension ViewController {
    private func fetchCocktails() {
        NetworkManager.shared.fetchCocktails(
            from: Link.randomCocktailURL.rawValue) { [weak self] result in
                switch result {
                case .success(let cocktail):
                    self?.makeDescription(cocktail)
                    self?.getImage(cocktail)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
    }

    private func makeDescription(_ cocktail: Cocktail) {
        guard let cocktailName = cocktail.strDrink,
              let cocktailCategory = cocktail.strCategory,
              let cocktailGlass = cocktail.strGlass,
              let cocktailInstruction = cocktail.strInstructions else { return }

        var cocktailIngredients: [String: String] = [:]

        if let cocktailIngredient1 = cocktail.strIngredient1,
           let cocktailMeasure1 = cocktail.strMeasure1 {
            cocktailIngredients[cocktailIngredient1] = cocktailMeasure1
        }
        if let cocktailIngredient2 = cocktail.strIngredient2,
           let cocktailMeasure2 = cocktail.strMeasure2 {
            cocktailIngredients[cocktailIngredient2] = cocktailMeasure2
        }
        if let cocktailIngredient3 = cocktail.strIngredient3,
           let cocktailMeasure3 = cocktail.strMeasure3 {
            cocktailIngredients[cocktailIngredient3] = cocktailMeasure3
        }
        if let cocktailIngredient4 = cocktail.strIngredient4,
           let cocktailMeasure4 = cocktail.strMeasure4 {
            cocktailIngredients[cocktailIngredient4] = cocktailMeasure4
        }
        if let cocktailIngredient5 = cocktail.strIngredient5,
           let cocktailMeasure5 = cocktail.strMeasure5 {
            cocktailIngredients[cocktailIngredient5] = cocktailMeasure5
        }
        if let cocktailIngredient6 = cocktail.strIngredient6,
           let cocktailMeasure6 = cocktail.strMeasure6 {
            cocktailIngredients[cocktailIngredient6] = cocktailMeasure6
        }
        if let cocktailIngredient7 = cocktail.strIngredient7,
           let cocktailMeasure7 = cocktail.strMeasure7 {
            cocktailIngredients[cocktailIngredient7] = cocktailMeasure7
        }
        if let cocktailIngredient8 = cocktail.strIngredient8,
            let cocktailMeasure8 = cocktail.strMeasure8 {
            cocktailIngredients[cocktailIngredient8] = cocktailMeasure8
        }
        if let cocktailIngredient9 = cocktail.strIngredient9,
             let cocktailMeasure9 = cocktail.strMeasure9 {
            cocktailIngredients[cocktailIngredient9] = cocktailMeasure9
        }
        if let cocktailIngredient10 = cocktail.strIngredient10,
             let cocktailMeasure10 = cocktail.strMeasure10 {
            cocktailIngredients[cocktailIngredient10] = cocktailMeasure10
        }
        if let cocktailIngredient11 = cocktail.strIngredient11,
            let cocktailMeasure11 = cocktail.strMeasure11 {
            cocktailIngredients[cocktailIngredient11] = cocktailMeasure11
        }
        if let cocktailIngredient12 = cocktail.strIngredient12,
             let cocktailMeasure12 = cocktail.strMeasure12 {
            cocktailIngredients[cocktailIngredient12] = cocktailMeasure12
        }
        if let cocktailIngredient13 = cocktail.strIngredient13,
              let cocktailMeasure13 = cocktail.strMeasure13 {
            cocktailIngredients[cocktailIngredient13] = cocktailMeasure13
        }
        if let cocktailIngredient14 = cocktail.strIngredient14,
             let cocktailMeasure14 = cocktail.strMeasure14 {
            cocktailIngredients[cocktailIngredient14] = cocktailMeasure14
        }
        if let cocktailIngredient15 = cocktail.strIngredient15,
              let cocktailMeasure15 = cocktail.strMeasure15 {
            cocktailIngredients[cocktailIngredient15] = cocktailMeasure15
        }

        var description = """
        Cocktail name: \(cocktailName)
        Category: \(cocktailCategory)
        Glass: \(cocktailGlass)
        Recipe: \(cocktailInstruction)
        Ingredients:\n
        """

        cocktailIngredients.forEach { (key, value) in
            if !key.isEmpty {
                description += "\(key) \(value)\n"
            }
        }

        descriptionTextView.text = description
    }

    private func getImage(_ cocktail: Cocktail) {
        guard let cocktailImageDataLink = cocktail.strDrinkThumb else { return }
        NetworkManager.shared.fetchData(from: cocktailImageDataLink) { [weak self] result in
            switch result {
            case .success(let imageData):
                self?.cocktailImage.image = UIImage(data: imageData)
                self?.activityIndicator.stopAnimating()
            case .failure(let error):
                print(error)
            }
        }
     }

    private func showSpinner(in view: UIView)  {
        activityIndicator.color = .white
        activityIndicator.startAnimating()
        activityIndicator.center = view.center
        activityIndicator.hidesWhenStopped = true
        cocktailImage.addSubview(activityIndicator)
    }
}
