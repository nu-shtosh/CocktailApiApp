//
//  Cocktail.swift
//  CocktailApiApp
//
//  Created by Илья Дубенский on 09.11.2022.
//

import Foundation

struct Cocktail: Decodable {
    let idDrink: String?
    let strDrink: String?
    let strDrinkAlternate: String?
    let strTags: String?
    let strVideo: String?
    let strCategory: String?
    let strIBA: String?
    let strAlcoholic: String?
    let strGlass: String?
    let strInstructions: String?
    let strDrinkThumb: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strImageSource: String?
    let strImageAttribution: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?

    init(
        idDrink: String?,
        strDrink: String?,
        strDrinkAlternate: String?,
        strTags: String?,
        strVideo: String?,
        strCategory: String?,
        strIBA: String?,
        strAlcoholic: String?,
        strGlass: String?,
        strInstructions: String?,
        strDrinkThumb: String?,
        strIngredient1: String?,
        strIngredient2: String?,
        strIngredient3: String?,
        strIngredient4: String?,
        strIngredient5: String?,
        strIngredient6: String?,
        strIngredient7: String?,
        strIngredient8: String?,
        strIngredient9: String?,
        strIngredient10: String?,
        strIngredient11: String?,
        strIngredient12: String?,
        strIngredient13: String?,
        strIngredient14: String?,
        strIngredient15: String?,
        strMeasure1: String?,
        strMeasure2: String?,
        strMeasure3: String?,
        strMeasure4: String?,
        strMeasure5: String?,
        strMeasure6: String?,
        strMeasure7: String?,
        strMeasure8: String?,
        strMeasure9: String?,
        strMeasure10: String?,
        strMeasure11: String?,
        strMeasure12: String?,
        strMeasure13: String?,
        strMeasure14: String?,
        strMeasure15: String?,
        strImageSource: String?,
        strImageAttribution: String?,
        strCreativeCommonsConfirmed: String?,
        dateModified: String?
    ) {
        self.idDrink = idDrink
        self.strDrink = strDrink
        self.strDrinkAlternate = strDrinkAlternate
        self.strTags = strTags
        self.strVideo = strVideo
        self.strCategory = strCategory
        self.strIBA = strIBA
        self.strAlcoholic = strAlcoholic
        self.strGlass = strGlass
        self.strInstructions = strInstructions
        self.strDrinkThumb = strDrinkThumb
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strIngredient6 = strIngredient6
        self.strIngredient7 = strIngredient7
        self.strIngredient8 = strIngredient8
        self.strIngredient9 = strIngredient9
        self.strIngredient10 = strIngredient10
        self.strIngredient11 = strIngredient11
        self.strIngredient12 = strIngredient12
        self.strIngredient13 = strIngredient13
        self.strIngredient14 = strIngredient14
        self.strIngredient15 = strIngredient15
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
        self.strMeasure5 = strMeasure5
        self.strMeasure6 = strMeasure6
        self.strMeasure7 = strMeasure7
        self.strMeasure8 = strMeasure8
        self.strMeasure9 = strMeasure9
        self.strMeasure10 = strMeasure10
        self.strMeasure11 = strMeasure11
        self.strMeasure12 = strMeasure12
        self.strMeasure13 = strMeasure13
        self.strMeasure14 = strMeasure14
        self.strMeasure15 = strMeasure15
        self.strImageSource = strImageSource
        self.strImageAttribution = strImageAttribution
        self.strCreativeCommonsConfirmed = strCreativeCommonsConfirmed
        self.dateModified = dateModified
    }

    init(cocktailData: [String: Any]) {
        idDrink = cocktailData["idDrink"] as? String ?? ""
        strDrink = cocktailData["strDrink"] as? String ?? ""
        strDrinkAlternate = cocktailData["strDrinkAlternate"] as? String ?? ""
        strTags = cocktailData["strTags"] as? String ?? ""
        strVideo = cocktailData["strVideo"] as? String ?? ""
        strCategory = cocktailData["strCategory"] as? String ?? ""
        strIBA = cocktailData["strIBA"] as? String ?? ""
        strAlcoholic = cocktailData["strAlcoholic"] as? String ?? ""
        strGlass = cocktailData["strGlass"] as? String ?? ""
        strInstructions = cocktailData["strInstructions"] as? String ?? ""
        strDrinkThumb = cocktailData["strDrinkThumb"] as? String ?? ""
        strIngredient1 = cocktailData["strIngredient1"] as? String ?? ""
        strIngredient2 = cocktailData["strIngredient2"] as? String ?? ""
        strIngredient3 = cocktailData["strIngredient3"] as? String ?? ""
        strIngredient4 = cocktailData["strIngredient4"] as? String ?? ""
        strIngredient5 = cocktailData["strIngredient5"] as? String ?? ""
        strIngredient6 = cocktailData["strIngredient6"] as? String ?? ""
        strIngredient7 = cocktailData["strIngredient7"] as? String ?? ""
        strIngredient8 = cocktailData["strIngredient8"] as? String ?? ""
        strIngredient9 = cocktailData["strIngredient9"] as? String ?? ""
        strIngredient10 = cocktailData["strIngredient10"] as? String ?? ""
        strIngredient11 = cocktailData["strIngredient11"] as? String ?? ""
        strIngredient12 = cocktailData["strIngredient12"] as? String ?? ""
        strIngredient13 = cocktailData["strIngredient13"] as? String ?? ""
        strIngredient14 = cocktailData["strIngredient14"] as? String ?? ""
        strIngredient15 = cocktailData["strIngredient15"] as? String ?? ""
        strMeasure1 = cocktailData["strMeasure1"] as? String ?? ""
        strMeasure2 = cocktailData["strMeasure2"] as? String ?? ""
        strMeasure3 = cocktailData["strMeasure3"] as? String ?? ""
        strMeasure4 = cocktailData["strMeasure4"] as? String ?? ""
        strMeasure5 = cocktailData["strMeasure5"] as? String ?? ""
        strMeasure6 = cocktailData["strMeasure6"] as? String ?? ""
        strMeasure7 = cocktailData["strMeasure7"] as? String ?? ""
        strMeasure8 = cocktailData["strMeasure8"] as? String ?? ""
        strMeasure9 = cocktailData["strMeasure9"] as? String ?? ""
        strMeasure10 = cocktailData["strMeasure10"] as? String ?? ""
        strMeasure11 = cocktailData["strMeasure11"] as? String ?? ""
        strMeasure12 = cocktailData["strMeasure12"] as? String ?? ""
        strMeasure13 = cocktailData["strMeasure13"] as? String ?? ""
        strMeasure14 = cocktailData["strMeasure14"] as? String ?? ""
        strMeasure15 = cocktailData["strMeasure15"] as? String ?? ""
        strImageSource = cocktailData["strImageSource"] as? String ?? ""
        strImageAttribution = cocktailData["strImageAttribution"] as? String ?? ""
        strCreativeCommonsConfirmed = cocktailData["strCreativeCommonsConfirmed"] as? String ?? ""
        dateModified = cocktailData["dateModified"] as? String ?? ""
    }

    static func getRandomCocktail(from value: Any) -> [Cocktail] {
        guard let cocktailsData = value as? [String: Any] else { return [] }
        let data = cocktailsData.first?.value
        guard let randomCocktailData = data as? [[String: Any]] else { return [] }
        return randomCocktailData.map { Cocktail(cocktailData: $0) }
    }
}

struct RandomCocktail: Decodable {
    let drinks: [Cocktail]
}
