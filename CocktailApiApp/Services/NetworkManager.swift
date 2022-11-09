//
//  NetworkManager.swift
//  CocktailApiApp
//
//  Created by Илья Дубенский on 09.11.2022.
//

import Foundation

enum Link: String {
    case randomCocktailURL = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

class NetworkManager {
    static let shared = NetworkManager()

    private init() {}

    func fetchImage(from url: String?, completion: @escaping(Result<Data, NetworkError>) -> Void) {
        guard let url = URL(string: url ?? "") else {
            completion(.failure(.invalidURL))
            return
        }
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: url) else {
                completion(.failure(.noData))
                return
            }
            DispatchQueue.main.async {
                completion(.success(imageData))
            }
        }
    }

    func fetch<T: Decodable>(
        _ type: T.Type,
        from url: String?,
        completion: @escaping (Result<T, NetworkError>
        ) -> Void) {
    
        guard let url = URL(string: url ?? "") else {
            completion(.failure(.invalidURL))
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                completion(.failure(.noData))
                print(error?.localizedDescription ?? "No error description")
                return
            }

            do {
                let type = try JSONDecoder().decode(T.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(type))
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }

}
