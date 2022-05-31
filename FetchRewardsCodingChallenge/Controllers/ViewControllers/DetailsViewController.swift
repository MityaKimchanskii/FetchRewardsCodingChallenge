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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        whiteLabelColor()
    }
    
    // MARK: - Helper Methods
    func fetchMealData() {
        guard let mealID = mealID else { return }
        MealController.fetchMealDetails(with: mealID) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self.updateView(with: data)
                case .failure(let error):
                    print(error)
                    print(error.localizedDescription)
                }
            }
        }
    }

    func updateView(with data: Data) {
        blackLabelColor(with: data)
        nameLabel.text = data.strMeal
        instractionsLabel.text = data.strInstructions
        ingredient1Label.text = data.strIngredient1
        ingredient2Label.text = data.strIngredient2
        ingredient3Label.text = data.strIngredient3
        ingredient4Label.text = data.strIngredient4
        ingredient5Label.text = data.strIngredient5
        ingredient6Label.text = data.strIngredient6
        ingredient7Label.text = data.strIngredient7
        ingredient8Label.text = data.strIngredient8
        ingredient9Label.text = data.strIngredient9
        ingredient10Label.text = data.strIngredient10
        ingredient11Label.text = data.strIngredient11
        ingredient12Label.text = data.strIngredient12
        ingredient13Label.text = data.strIngredient13
        ingredient14Label.text = data.strIngredient14
        ingredient15Label.text = data.strIngredient15
        ingredient16Label.text = data.strIngredient16
        ingredient17Label.text = data.strIngredient17
        ingredient18Label.text = data.strIngredient18
        ingredient19Label.text = data.strIngredient19
        ingredient20Label.text = data.strIngredient20
        measure1Label.text = data.strMeasure1
        measure2Label.text = data.strMeasure2
        measure3Label.text = data.strMeasure3
        measure4Label.text = data.strMeasure4
        measure5Label.text = data.strMeasure5
        measure6Label.text = data.strMeasure6
        measure7Label.text = data.strMeasure7
        measure8Label.text = data.strMeasure8
        measure9Label.text = data.strMeasure9
        measure10Label.text = data.strMeasure10
        measure11Label.text = data.strMeasure11
        measure12Label.text = data.strMeasure12
        measure13Label.text = data.strMeasure13
        measure14Label.text = data.strMeasure14
        measure15Label.text = data.strMeasure15
        measure16Label.text = data.strMeasure16
        measure17Label.text = data.strMeasure17
        measure18Label.text = data.strMeasure18
        measure19Label.text = data.strMeasure19
        measure20Label.text = data.strMeasure20
    }
}
