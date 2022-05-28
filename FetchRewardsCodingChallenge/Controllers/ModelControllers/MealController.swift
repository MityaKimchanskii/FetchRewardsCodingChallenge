//
//  MealListController.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import Foundation
import UIKit

class MealController {
    
    static let baseURL = URL(string: "https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert")
    static let baseURLForData = URL(string:  "https://www.themealdb.com/api/json/v1/1/lookup.php")
    static let dataKey = "i"
    
    static func fetchMeals(completion: @escaping (Result<[Meal], NetworkError>) -> Void) {
        guard let baseURL = baseURL else { return completion(.failure(.invalidURL)) }
        
        URLSession.shared.dataTask(with: baseURL) { data, _, error in
            
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            
            guard let data = data else { return completion(.failure(.noData)) }
            
            do {
                let topLevelObject = try JSONDecoder().decode(TopLevelObject.self, from: data)
                let resultArrayOfMeal = topLevelObject.meals
                
                var mealsArray: [Meal] = []
                
                for meal in resultArrayOfMeal {
                    mealsArray.append(meal)
                }
                
                let sortedArr = mealsArray.sorted { $0.strMeal < $1.strMeal }
                return completion(.success(sortedArr))
                
            } catch {
                return completion(.failure(.unableToDecode))
            }
        }.resume()
    }
    
    static func fetchMealDetails(with id: String, completion: @escaping (Result<[MealData], NetworkError>) -> Void) {
        guard let baseURLForData = baseURLForData else { return completion(.failure(.invalidURL)) }
        
        var components = URLComponents(url: baseURLForData, resolvingAgainstBaseURL: true)
        let dataQuery = URLQueryItem(name: dataKey, value: id)
        components?.queryItems = [dataQuery]
        
        guard let finalURL = components?.url else { return completion(.failure(.invalidURL)) }
        
        URLSession.shared.dataTask(with: finalURL) { data, _, error in
            
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            
            guard let data = data else { return completion(.failure(.noData)) }
            
            do {
                let mealData = try JSONDecoder().decode(MealData.self, from: data)
                return completion(.success([mealData]))
            } catch {
                return completion(.failure(.unableToDecode))
            }
        }.resume()
    }
}
