import UIKit

class ViewController: UIViewController {
    
    private var embedController: EmbedController?
    private var button: UIButton?
    private let addEmbedButtonTitle = "Add embed"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = UIButton(frame: CGRect(x: 50, y: 50, width: 150, height: 20))
        button?.setTitle(addEmbedButtonTitle, for: .normal)
        button?.setTitleColor(.black, for: .normal)
        button?.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button!)
        view.backgroundColor = .green
        print("viewDidLoad")
        printChildViewControllesInfo()
        buttonTapped()
    }
    
    func addChildViewControllers() {
        
        var tableViewController = UITableViewController()
        tableViewController.view.frame = CGRect(x: 50, y: 150, width: 200, height: 800)
        tableViewController.view.backgroundColor = .lightGray
        embedController?.append(viewController: tableViewController)
        
        
        
//        var newViewController = ViewControllerWithButton()
//        newViewController.view.frame = CGRect(origin: CGPoint(x: 50, y: 150), size: CGSize(width: 200, height: 80))
//        newViewController.view.backgroundColor = .lightGray
//        embedController?.append(viewController: newViewController)
//
//        newViewController = ViewControllerWithButton()
//        newViewController.view.frame = CGRect(origin: CGPoint(x: 50, y: 250), size: CGSize(width: 200, height: 80))
//        newViewController.view.backgroundColor = .blue
//        embedController?.append(viewController: newViewController)
//
//        print("\nChildViewControllers added")
//        printChildViewControllesInfo()
    }
    
    @objc func buttonTapped() {
        
        if embedController == nil {
            embedController = EmbedController(rootViewController: self)
            button?.setTitle("Remove embed", for: .normal)
            addChildViewControllers()
        } else {
            embedController = nil
            print("\nChildViewControllers removed")
            printChildViewControllesInfo()
            button?.setTitle(addEmbedButtonTitle, for: .normal)
        }
    }
    
    func printChildViewControllesInfo() {
        print("view.subviews.count: \(view.subviews.count)")
        print("childViewControllers.count: \(children.count)")
    }
}
