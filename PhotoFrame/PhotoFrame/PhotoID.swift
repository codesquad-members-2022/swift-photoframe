//
//  PhotoID.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/18.
//

//랜덤으로 PhotoID를 뽑기 위한 enum과 CaseIterable프로토콜
//enum PhotoID:String,CaseIterable {
//    case one = "01"
//    case two = "02"
//    case three = "03"
//    case four = "04"
//    case five = "05"
//    case six = "06"
//    case seven = "07"
//    case eight = "08"
//    case nine = "09"
//    case ten = "10"
//    case eleven = "11"
//    case twelve = "12"
//    case thirteen = "13"
//    case fourteen = "14"
//    case fifteen = "15"
//    case sixteen = "16"
//    case seventeen = "17"
//    case eighteen = "18"
//    case nineteen = "19"
//    case twenty = "20"
//    case twenty_one = "21"
//    case twenty_two = "22"
//
//    static var randomID:String {
//        guard let randomID = PhotoID.allCases.randomElement()?.rawValue else { return "사용가능한 Photo가 없습니다."}
//        return randomID
//    }
//
//}

enum PhotoID0:String,CaseIterable {
    case one = "011"
    case two = "021"
    case three = "031"
    case four = "041"
    case five = "051"
    case six = "061"
    case seven = "071"
    case eight = "081"
    case nine = "091"
    case ten = "101"
    case eleven = "111"
    case twelve = "121"
    case thirteen = "131"
    case fourteen = "141"
    case fifteen = "151"
    case sixteen = "161"
    case seventeen = "171"
    case eighteen = "181"
    case nineteen = "191"
    case twenty = "201"
    case twenty_one = "211"
    case twenty_two = "221"
    
    static var randomID:String {
        guard let randomID = PhotoID0.allCases.randomElement()?.rawValue else { return "사용가능한 Photo가 없습니다."}
        return randomID
    }
    
}
