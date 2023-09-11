//
//  BaseTabBarViewController.swift
//  viewCodeExample
//
//

import UIKit


class BaseTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        let todayViewController = createItem(viewController: UIViewController(), title: "Hoje", image: "icone-hoje")
        let appsViewController = createItem(viewController: UIViewController(), title: "Apps", image: "icone-apps")
        let searchViewController = createItem(viewController: SearchViewController(), title: "Buscar", image: "icone-busca")
        
        viewControllers =  [todayViewController, appsViewController, searchViewController]
    }
    
    func createItem(viewController: UIViewController, title: String, image: String) -> UIViewController {
        let navViewController = UINavigationController(rootViewController: viewController)
        
        navViewController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = title
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: image)
        viewController.view.backgroundColor = .white
        return navViewController
    }
}
