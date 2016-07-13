//
//  EditProfileViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/5.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit




class EditProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    
    
//    @IBAction func editImageButton(sender: AnyObject) {
//        delegate?.changeProfileImage()
//        delegate?.changeProfileNameLabel()
//    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        editImage.setBackgroundImage(UIImage(named: "nami"), forState: UIControlState.Normal)
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    

    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProfilePictureList.pic.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ImageProfileCell", forIndexPath: indexPath) as! EditProilfeImageCollectionViewCell
        cell.editProfileImage.image = UIImage(named: ProfilePictureList.pic[indexPath.row].name)

        return cell
    }
    
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//
//    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
