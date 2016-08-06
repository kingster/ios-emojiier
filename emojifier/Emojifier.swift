//
//  Emojifier.swift
//  emojifier
//
//  Created by Kinshuk  Bairagi on 06/08/16.
//  Copyright © 2016 Kinshuk. All rights reserved.
//

import Foundation


class Emojifier {
    
    let emojiMap : [ String : [String]] = [
        "smile|happy|laugh" : ["😀","😁","😃","😄","😆","😊","🙂","😇"],
        "wink|kidding" : ["😉"],
        "tasty|yum|yummy|taste" : ["😋"],
        "cool" : ["😎"],
        "love" : ["😍","😘"],
        "kiss" : ["😗","😙"],
        "Hug" : ["🤗"],
        "Think" : ["🤔"],
        "nothing" : ["😐","😑"],
        "Whatever" : ["🙄"],
        "Smirk|heh" : ["😏"],
        "Persevere" : ["😣"],
        "shock" : ["😮","😳"],
        "muh band" : ["🤐"],
        "surprise" : ["😯"],
        "tire" : ["😪"],
        "Sleep" : ["😴"],
        "Relief" : ["😌"],
        "joking|kidding" : ["😜"],
        "LOL" : ["😝"],
        "Disappoint" : ["😒","😞","😥"],
        "Sad" : ["😓"],
        "Pensive" : ["😔"],
        "Confused" : ["😕"],
        "Upside-Down" : ["🙃"],
        "Money-Mouth" : ["🤑"],
        "Astonished " : ["😲"],
        "Sick" : ["🤒"],
        "Confound " : ["😖"],
        "Worry " : ["😟"],
        "Cry" : ["😢","😭"],
        "Frown|sad" : ["😦","🙁"],
        "Anguish " : ["😧"],
        "Fear " : ["😨"],
        "Frustrate" : ["😬"],
        "Scream" : ["😱"],
        "Angry" : ["😡"],
        "Skull" : ["💀"],
        "Ghost" : ["👻"],
        "Alien" : ["👽"],
        "Robot " : ["🤖"],
        "Boy" : ["👦"],
        "Girl" : ["👧"],
        "Man|guy" : ["👨"],
        "Woman|gal|girl" : ["👩"],
        "Baby" : ["👶"],
        "Hair" : ["👱"],
        "Officer|police|security" : ["👮"],
        "Worker" : ["👷"],
        "Helmet" : ["⛑"],
        "Princess" : ["👸"],
        "Guard" : ["💂"],
        "Spy" : ["🕵"],
        "Santa" : ["🎅"],
        "Bride" : ["👰"],
        "Angel" : ["👼"],
        "Massage" : ["💆"],
        "Pouting" : ["🙎"],
        "Pedestrian" : ["🚶"],
        "Runner" : ["🏃"],
        "Family " : ["👨‍👩‍👧"],
        "Left" : ["👈"],
        "Right" : ["👉"],
        "Up" : ["👆"],
        "Down" : ["👇"],
        "Hi" : ["🖐","👋"],
        "Stop" : ["✋"],
        "OK" : ["👌"],
        "Nope" : ["👎"],
        "Clap|applause" : ["👏"],
        "Eye" : ["👀"],
        "Tongue" : ["👅"],
        "Mouth" : ["👄"],
        "Mark" : ["💋"],
        "Eyeglass" : ["👓"],
        "Sunglass" : ["🕶"],
        "Necktie" : ["👔"],
        "T-Shirt" : ["👕"],
        "Jean" : ["👖"],
        "Dress" : ["👗"],
        "Kimono" : ["👘"],
        "Bikini" : ["👙"],
        "Cloth|Clothes" : ["👚"],
        "Purse" : ["👛"],
        "Handbag" : ["👜"],
        "Pouch" : ["👝"],
        "Satchel" : ["🎒"],
        "Shoe" : ["👞"],
        "Sandal" : ["👡"],
        "Boot" : ["👢"],
        "Crown" : ["👑"],
        "Hat" : ["👒"],
        "Cap" : ["🎓"],
        "Ring" : ["💍"],
        "Umbrella" : ["🌂"],
        "Briefcase" : ["💼"]
    ]
    
    func emojify(string:String) -> String {
        var emjString = string
        let words = string.characters.split {$0 == " "}.map(String.init)
        words.forEach{
            w  -> Void in
            if let emojis = emojiMap[w] {
                print(emojis)
                emjString = emjString.stringByReplacingOccurrencesOfString(w, withString: emojis.first ?? w)
            }
        }
        return emjString
    }
    
}