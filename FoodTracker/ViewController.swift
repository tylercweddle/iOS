//
//  ViewController.swift
//  FoodTracker
//
//  Created by libraries on 1/22/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,
                      UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate callbacks for the text field
        nameTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //Dismiss the Image Picker if the user cancelled the operation
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //Ensures that only one image is received in te proper format.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected an image, but received: \(info)")
        }
        
        //Set the image view to the selected image from the ImagePickerController
        photoImageView.image = selectedImage
        
        //Dissmiss the ImagePicker after selected an image
        dismiss(animated: true, completion: nil)
    }
    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        //Hide keyboard on image selection
        nameTextField.resignFirstResponder()
        
        //Allow pictures to be taken from camera roll (not taken, just picked)
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        
        //Make sure ViewController (self) is notified after the user picks and image
        imagePickerController.delegate = self
        
        //Ties imagePickerController to the ViewController (self) by the VC asking the IPC to present itself.
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    //MARK: UITextFieldDelegate
    
    //Once user hits 'return' in keyboard, the keyboard should disappear
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

