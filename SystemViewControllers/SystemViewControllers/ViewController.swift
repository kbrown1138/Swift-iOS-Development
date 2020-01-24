//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by ManhattanProject on 8/20/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        
        guard let image = imageView.image else { return }
        let activityController =
        UIActivityViewController(activityItems: [image],
        applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView
        = sender

        present(activityController, animated: true, completion: nil)
        
    }
    
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        
        if let url = URL(string: "http://www.apple.com") {
            let safariViewController = SFSafariViewController(url:
                url)
            present(safariViewController, animated: true,
            completion: nil)
        }
        
    }
    
    @IBAction func photosButtonTapped(_ sender: UIButton) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel",
        style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAction = UIAlertAction(title: "Camera",
            style: .default, handler: { action in
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true,
                completion: nil)
            })
            alertController.addAction(cameraAction)
        }
    
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibraryAction = UIAlertAction(title: "Photo Library",
            style: .default, handler: { action in
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker, animated: true,
                completion: nil)
            })
            alertController.addAction(photoLibraryAction)
        }
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
    didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        
        if let selectedImage =
        info[UIImagePickerController.InfoKey.originalImage]
            as? UIImage {
            imageView.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func emailButtonTapped(_ sender: UIButton) {
       guard MFMailComposeViewController.canSendMail() else {
            print("Can not send mail")
            return
        }
        
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        
        mailComposer.setToRecipients(["kbrown1138@gmail.com"])
        mailComposer.setSubject("Look at this")
        mailComposer.setMessageBody("Hello, this is an email from the app I made.", isHTML: false)
            
        present(mailComposer, animated: true, completion: nil)
        
    }
    
    func mailComposeController(_ controller:
        MFMailComposeViewController, didFinishWith result:
        MFMailComposeResult, error: Error?) {
                dismiss(animated: true, completion: nil)
    }

}

