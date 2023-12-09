//
//  ViewController.swift
//  BasicLoginScreen
//
//  Created by Oğuzcan Yıldırım on 2.12.2023.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    
    
    @IBOutlet weak var imageCircle: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageCircle.layer.masksToBounds = true
        imageCircle.layer.cornerRadius = imageCircle.frame.height / 2
        imageCircle.frame.size = CGSize(width: 128, height: 128)
    }
        
    @IBAction func imagePicker(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let image = info[.editedImage] as? UIImage else {return}
        imageCircle.image = image
        dismiss(animated: true)
    }
    
}

