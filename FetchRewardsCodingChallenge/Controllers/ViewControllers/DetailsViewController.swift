//
//  DetailsViewController.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    // MARK: - Properties
    var mealID: String?
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var instractionsLabel: UILabel!
    @IBOutlet weak var ingredient1Label: UILabel!
    @IBOutlet weak var ingredient2Label: UILabel!
    @IBOutlet weak var ingredient3Label: UILabel!
    @IBOutlet weak var ingredient4Label: UILabel!
    @IBOutlet weak var ingredient5Label: UILabel!
    @IBOutlet weak var ingredient6Label: UILabel!
    @IBOutlet weak var ingredient7Label: UILabel!
    @IBOutlet weak var ingredient8Label: UILabel!
    @IBOutlet weak var ingredient9Label: UILabel!
    @IBOutlet weak var ingredient10Label: UILabel!
    @IBOutlet weak var ingredient11Label: UILabel!
    @IBOutlet weak var ingredient12Label: UILabel!
    @IBOutlet weak var ingredient13Label: UILabel!
    @IBOutlet weak var ingredient14Label: UILabel!
    @IBOutlet weak var ingredient15Label: UILabel!
    @IBOutlet weak var ingredient16Label: UILabel!
    @IBOutlet weak var ingredient17Label: UILabel!
    @IBOutlet weak var ingredient18Label: UILabel!
    @IBOutlet weak var ingredient19Label: UILabel!
    @IBOutlet weak var ingredient20Label: UILabel!
    @IBOutlet weak var measure1Label: UILabel!
    @IBOutlet weak var measure2Label: UILabel!
    @IBOutlet weak var measure3Label: UILabel!
    @IBOutlet weak var measure4Label: UILabel!
    @IBOutlet weak var measure5Label: UILabel!
    @IBOutlet weak var measure6Label: UILabel!
    @IBOutlet weak var measure7Label: UILabel!
    @IBOutlet weak var measure8Label: UILabel!
    @IBOutlet weak var measure9Label: UILabel!
    @IBOutlet weak var measure10Label: UILabel!
    @IBOutlet weak var measure11Label: UILabel!
    @IBOutlet weak var measure12Label: UILabel!
    @IBOutlet weak var measure13Label: UILabel!
    @IBOutlet weak var measure14Label: UILabel!
    @IBOutlet weak var measure15Label: UILabel!
    @IBOutlet weak var measure16Label: UILabel!
    @IBOutlet weak var measure17Label: UILabel!
    @IBOutlet weak var measure18Label: UILabel!
    @IBOutlet weak var measure19Label: UILabel!
    @IBOutlet weak var measure20Label: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMealData()
    }
    
    // MARK: - Helper Methods
    func fetchMealData() {
        guard let mealID = mealID else { return }
        MealController.fetchMealDetails(with: mealID) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let mealData):
                    self.updateView(with: mealData[0])
                case .failure(let error):
                    print(error)
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    // MARK: - Helper Methods
    func updateView(with mealData: MealData) {
        let data = mealData.meals
        nameLabel.text = data[0].strMeal
        instractionsLabel.text = data[0].strInstructions
        ingredient1Label.text = data[0].strIngredient1
        ingredient2Label.text = data[0].strIngredient2
        ingredient3Label.text = data[0].strIngredient3
        ingredient4Label.text = data[0].strIngredient4
        ingredient5Label.text = data[0].strIngredient5
        ingredient6Label.text = data[0].strIngredient6
        ingredient7Label.text = data[0].strIngredient7
        ingredient8Label.text = data[0].strIngredient8
        ingredient9Label.text = data[0].strIngredient9
        ingredient10Label.text = data[0].strIngredient10
        ingredient11Label.text = data[0].strIngredient11
        ingredient12Label.text = data[0].strIngredient12
        ingredient13Label.text = data[0].strIngredient13
        ingredient14Label.text = data[0].strIngredient14
        ingredient15Label.text = data[0].strIngredient15
        ingredient16Label.text = data[0].strIngredient16
        ingredient17Label.text = data[0].strIngredient17
        ingredient18Label.text = data[0].strIngredient18
        ingredient19Label.text = data[0].strIngredient19
        ingredient20Label.text = data[0].strIngredient20
        measure1Label.text = data[0].strMeasure1
        measure2Label.text = data[0].strMeasure2
        measure3Label.text = data[0].strMeasure3
        measure4Label.text = data[0].strMeasure4
        measure5Label.text = data[0].strMeasure5
        measure6Label.text = data[0].strMeasure6
        measure7Label.text = data[0].strMeasure7
        measure8Label.text = data[0].strMeasure8
        measure9Label.text = data[0].strMeasure9
        measure10Label.text = data[0].strMeasure10
        measure11Label.text = data[0].strMeasure11
        measure12Label.text = data[0].strMeasure12
        measure13Label.text = data[0].strMeasure13
        measure14Label.text = data[0].strMeasure14
        measure15Label.text = data[0].strMeasure15
        measure16Label.text = data[0].strMeasure16
        measure17Label.text = data[0].strMeasure17
        measure18Label.text = data[0].strMeasure18
        measure19Label.text = data[0].strMeasure19
        measure20Label.text = data[0].strMeasure20
    }
}
