//
//  ViewController.swift
//  FoodTracker
//
//  Created by Ingenieria y Software on 18/10/15.
//  Copyright © 2015 Ingenieria y Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var editTextMeal : UITextField!
    @IBOutlet var labelMeal : UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var ratingControl: RatingControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setCurrentMeal(sender : UITextField){
        labelMeal.text = editTextMeal.text;
    }
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        let imagePickerController = UIImagePickerController()
        editTextMeal.resignFirstResponder()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}

