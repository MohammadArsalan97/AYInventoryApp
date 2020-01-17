//
//  SignInViewController.swift
//  InventoryManagementSystem
//
//  Created by axiom1234 on 01/01/2020.
//  Copyright © 2020 MohammadArsalan. All rights reserved.
//

import UIKit
import Alamofire

class SignInViewController: UIViewController {
    
    struct Login: Encodable,Decodable {
        let email: String
        let password: String
    }

    @IBOutlet weak var emailTxtField: CustomTextField!
    
    @IBOutlet weak var passwordTxtField: CustomTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func loginBtn(_ sender: Any) {
       // print("button tapped")
        postRequest(email: emailTxtField.text!, password: passwordTxtField.text!) { (result, error) in
            if let result = result {
                print("success: \(result)")
            } else if let error = error {
                print("error: \(error.localizedDescription)")
            }
        }
        
//        let login = Login(email: emailTxtField.text!, password: passwordTxtField.text!)
//
//        Alamofire.request("https://app-inventory.herokuapp.com/login", method: .post, parameters: ["email":login.email, "password":login.password], encoding: JSONEncoding.default, headers: nil).responseJSON(completionHandler: {(response) in
//            if let error = response.error{
//                let err = error.localizedDescription
//                print(err)
//
//            }else{
//                let temp = try! response.result.value as! [String:Any]
//                let err =  temp["error"] as! String
//                if err != ""{
//                    print(err)
//                }else{
//                    let data = temp["data"] as! [String:Any]
//                    var token = (data["token"] as! String)
//                    var userData = data["user"] as! [String:Any]
//                    print(userData)
//                   // userData["password"] = 123
//                    let jsonData = try! JSONSerialization.data(withJSONObject: userData, options: JSONSerialization.WritingOptions.prettyPrinted)
//                    let decoder = JSONDecoder()
//                    do
//                    {
//                        self.performSegue(withIdentifier: "signinVCToHomeVC", sender: nil)
//                    }
//                    catch
//                    {
//                        print(error.localizedDescription)
//                    }
//                    print("success")
//                }
//            }
//
//
//        })
    }
    func postRequest(email: String, password: String, completion: @escaping ([String: Any]?, Error?) -> Void) {
        
        //declare parameter as a dictionary which contains string as key and value combination.
        let parameters = ["email": email, "password": password]
        
        //create the url with NSURL
        let url = URL(string: "https://app-inventory.herokuapp.com/login")!
        
        //create the session object
        let session = URLSession.shared
        
        //now create the Request object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to data object and set it as request body
        } catch let error {
            print(error.localizedDescription)
            completion(nil, error)
        }
        
        //HTTP Headers
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request, completionHandler: { data, response, error in
            
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                completion(nil, NSError(domain: "dataNilError", code: -100001, userInfo: nil))
                return
            }
            
            do {
                //create json object from data
                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else {
                    completion(nil, NSError(domain: "invalidJSONTypeError", code: -100009, userInfo: nil))
                    return
                }
                print(json)
                completion(json, nil)
            } catch let error {
                print(error.localizedDescription)
                completion(nil, error)
            }
        })
        
        task.resume()
    }
    
//    @objc func submitAction(_ sender: UIButton) {
//        //call postRequest with username and password parameters
//        postRequest(username: "username", password: "password") { (result, error) in
//            if let result = result {
//                print("success: \(result)")
//            } else if let error = error {
//                print("error: \(error.localizedDescription)")
//            }
//        }
//    }
}
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//
//        let session = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let response = response{
//                print(response)
//            }
//            if let data = data{
//                print(data)
//                do{
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                } catch{
//                    print(error)
//                }
//
//            }
//        }
//        session.resume()
