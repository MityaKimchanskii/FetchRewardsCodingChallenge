//
//  MealTableViewCell.swift
//  FetchRewardsCodingChallenge
//
//  Created by Mitya Kim on 5/24/22.
//

import UIKit
import SDWebImage

class MealTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    var meal: Meal? {
        didSet {
            updateView()
        }
    }

    // MARK: - Outlets
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!

    // MARK: - Helper Methods
    func updateView() {
        guard let meal = meal else { return }
        nameLabel.text = meal.strMeal
        idLabel.text = meal.idMeal
        mealImageView.sd_setImage(with: meal.strMealThumb)
    }
}
