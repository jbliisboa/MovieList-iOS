//
//  TabbarController.swift
//  MovieList-iOS
//
//  Created by Admin on 03/03/21.
//

import UIKit

class TabbArController: UITabBarController {
    
    var movies = MoviesManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeViewController = self.createTabItem(viewController: UIViewController(), title: "Home")
        homeViewController.view.backgroundColor = .red
        
        
        let categoriesViewController = self.createTabItem(viewController: UIViewController(), title: "Categories")
        categoriesViewController.view.backgroundColor = .blue
        
        viewControllers = [homeViewController, categoriesViewController]
        
        movies.performRequest()
    
    }
    
    
    func createTabItem (viewController: UIViewController, title: String) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: viewController)
        
        viewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.navigationBar.prefersLargeTitles = true
        
        return navController
        
    }
    
}
