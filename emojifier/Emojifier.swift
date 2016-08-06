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
        "hug" : ["🤗"],
        "think" : ["🤔"],
        "nothing" : ["😐","😑"],
        "whatever" : ["🙄"],
        "smirk|heh" : ["😏"],
        "persevere" : ["😣"],
        "shock" : ["😮","😳"],
        "muh band" : ["🤐"],
        "surprise" : ["😯"],
        "tire" : ["😪"],
        "sleep" : ["😴"],
        "relief" : ["😌"],
        "joking|kidding" : ["😜"],
        "lol" : ["😝"],
        "disappoint" : ["😒","😞","😥"],
        "sad" : ["😓"],
        "pensive" : ["😔"],
        "confused" : ["😕"],
        "upside-down" : ["🙃"],
        "money-mouth" : ["🤑"],
        "astonished " : ["😲"],
        "sick" : ["🤒"],
        "confound " : ["😖"],
        "worry " : ["😟"],
        "cry" : ["😢","😭"],
        "frown|sad" : ["😦","🙁"],
        "anguish " : ["😧"],
        "fear " : ["😨"],
        "frustrate" : ["😬"],
        "scream" : ["😱"],
        "angry" : ["😡"],
        "skull" : ["💀"],
        "ghost" : ["👻"],
        "alien" : ["👽"],
        "robot " : ["🤖"],
        "boy" : ["👦"],
        "girl" : ["👧"],
        "man|guy" : ["👨"],
        "woman|gal|girl" : ["👩"],
        "baby" : ["👶"],
        "hair" : ["👱"],
        "officer|police|security" : ["👮"],
        "worker" : ["👷"],
        "helmet" : ["⛑"],
        "princess" : ["👸"],
        "guard" : ["💂"],
        "spy" : ["🕵"],
        "santa" : ["🎅"],
        "bride" : ["👰"],
        "angel" : ["👼"],
        "massage" : ["💆"],
        "pouting" : ["🙎"],
        "pedestrian" : ["🚶"],
        "runner" : ["🏃"],
        "family " : ["👨‍👩‍👧"],
        "left" : ["👈"],
        "right" : ["👉"],
        "up" : ["👆"],
        "down" : ["👇"],
        "hi" : ["🖐","👋"],
        "stop" : ["✋"],
        "ok" : ["👌"],
        "nope" : ["👎"],
        "clap|applause" : ["👏"],
        "eye" : ["👀"],
        "tongue" : ["👅"],
        "mouth" : ["👄"],
        "mark" : ["💋"],
        "eyeglass" : ["👓"],
        "sunglass" : ["🕶"],
        "necktie" : ["👔"],
        "t-shirt" : ["👕"],
        "jean" : ["👖"],
        "dress" : ["👗"],
        "kimono" : ["👘"],
        "bikini" : ["👙"],
        "cloth|clothes" : ["👚"],
        "purse" : ["👛"],
        "handbag" : ["👜"],
        "pouch" : ["👝"],
        "satchel" : ["🎒"],
        "shoe" : ["👞"],
        "sandal" : ["👡"],
        "boot" : ["👢"],
        "crown" : ["👑"],
        "hat" : ["👒"],
        "cap" : ["🎓"],
        "ring" : ["💍"],
        "umbrella" : ["🌂"],
        "briefcase" : ["💼"]
    ]
    
    func emojify(string:String) -> String {
        var emjString = string
        let words = string.characters.split {$0 == " "}.map(String.init)
        words.forEach{
            w  -> Void in
            if let emojis = emojiMap[w.lowercaseString] {
                print(emojis)
                emjString = emjString.stringByReplacingOccurrencesOfString(w, withString: emojis.first ?? w)
            }
        }
        return emjString
    }
    
}