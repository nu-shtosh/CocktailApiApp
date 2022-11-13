//
//  NetworkManager.swift
//  CocktailApiApp
//
//  Created by Илья Дубенский on 09.11.2022.
//

import Alamofire
import Foundation

enum Link: String {
    case randomCocktailURL = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
}

class NetworkManager {
    static let shared = NetworkManager()

    private init() {}

    func fetchData(
        from url: String,
        completion: @escaping(Result<Data, AFError>) -> Void
    ) {
        AF.request(url)
            .validate()
            .responseData { dataResponse in
                switch dataResponse.result {
                case .success(let imageData):
                    completion(.success(imageData))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }

    func fetchCocktails(
        from url: String,
        completion: @escaping(Result<Cocktail, AFError>) -> Void
    ) {
        AF.request(url)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    let cocktails = RandomCocktail(drinks: Cocktail.getRandomCocktail(from: value))
                    if let randomCocktail = cocktails.drinks.first {
                        completion(.success(randomCocktail))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
