import UIKit

//Set up the necessary constants for the app 
let storeTitle = "Skincare & Wellness Store"
let storeImage = "skincare-wellness-icon.png"
let storeDescription = "Welcome to our amazing skincare and wellness store. We provide a wide variety of products to keep your skin looking and feeling healthy."

//Class to hold store product data
class StoreProduct {
    var productName : String
    var productPrice : Double
    var productImage : String
    var productDescription : String
    
    init(name: String, price: Double, image:String, description: String) {
        self.productName = name
        self.productPrice = price
        self.productImage = image
        self.productDescription = description
    }
}

//Array to hold StoreProduct objects
var storeProducts = [StoreProduct]()

//Function to add products to store
func addProductsToStore() {
    let product1 = StoreProduct(name: "Lip Balm", price: 3.99, image: "lip-balm.png", description: "Moisture and nourish your lips with this amazing lip balm.")
    storeProducts.append(product1)
    
    let product2 = StoreProduct(name: "Face Mask", price: 5.99, image: "face-mask.png", description: "Try this amazing face mask to soothe and rejuvenate your skin.")
    storeProducts.append(product2)
    
    let product3 = StoreProduct(name: "Body Lotion", price: 7.99, image: "body-lotion.png", description: "This body lotion is designed to keep your skin hydrated and feeling soft.")
    storeProducts.append(product3)
    
    let product4 = StoreProduct(name: "Essential Oil", price: 12.99, image: "essential-oil.png", description: "This essential oil helps to reduce stress and promote a feeling of calm.")
    storeProducts.append(product4)
    
    let product5 = StoreProduct(name: "Hair Mask", price: 15.99, image: "hair-mask.png", description: "This hair mask will help to restore shine and volume to your hair.")
    storeProducts.append(product5)
}

//Function to calculate the total cost of the products in the store
func calculateStoreTotal() -> Double {
    var storeTotal : Double = 0
    for product in storeProducts {
        storeTotal += product.productPrice
    }
    return storeTotal
}

//Function to display the store products
func displayStoreProducts() {
    for product in storeProducts {
        print("name: \(product.productName)")
        print("price: $\(product.productPrice)")
        print("description: \(product.productDescription)")
        print()
    }
    print("Total Cost: $\(calculateStoreTotal())")
}

//Function to display store info
func displayStoreInfo() {
    print(storeTitle)
    print("==========")
    print()
    print(storeDescription)
    print()
    print("Products:")
    print()
}

//Main
func main() {
    addProductsToStore()
    displayStoreInfo()
    displayStoreProducts()
}

main()