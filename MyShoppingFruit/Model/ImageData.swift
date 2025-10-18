//
//  ImageData.swift
//  MyShoppingFruit
//
//  Created by Iqbal Alhadad on 07/10/25.
//

import Foundation

struct FruitModel {
    var id:Int
    var title:fruitTitle
    var image:String
    var price:String
    var color:String
}

enum fruitTitle: String{
    case apple, apricot, banana, pear, strawberry, watermelon , kiwi ,
         cherry , plum , grape , peach , mango , durian , coconut , pineapple ,
    papaya, avocado , dragonfruit , jackfruit , lemon , muskmelon , fig
}
