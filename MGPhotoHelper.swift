//
//  MGPhotoHelper.swift
//  
//
//  Created by Anika Morris on 7/6/17.
//
//

import UIKit

class MGPhotoHelper: NSObject {
    
    //MARK: -Properties
    
    var completionHandler: ((UIImage) -> Void)?
    
    //MARK: -Helper Methods
    
    func presentActionSheet(from ViewController: UIViewController) {
        let alertController = UIAlertController(title: nil, message: "Where do you want to get your picture from?", preferredStyle: .actionSheet)
            
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let capturePhotoAction = UIAlertAction(title: "Take Photo", style: .default, handler: { action in
                
            })
            
            alertController.addAction(capturePhotoAction)
        }
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let uploadAction = UIAlertAction(title: "Upload from Library", style: .default, handler: { action in
                
            })
            
            alertController.addAction(uploadAction)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        ViewController.present(alertController, animated: true)
    }
}