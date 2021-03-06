//
//  DataSource.swift
//  StudentList
//
//  Created by Nickolai Nikishin on 28.11.21.
//

import Foundation

struct Student {
    var name: String
    var phone: String

    
    mutating func resetName() {
        name = ""
    }
    
}

struct DataSource {
    static let men =
        ["Богданович Дмитрий Александрович",
         "Гришин Павел Андреевич",
         "Куклицкий Максим Сергеевич",
         "Лапин Николай Владимирович",
         "Малишевский Никита Валерьевич",
         "Матвеенко Сергей Александрови",
         "Мостовой Алексей Алексеевич",
         "Пачковский Михаил Тадеушевич",
         "Савков Александр Геннадьевич",
         "Симонов Владислав Дмитриевич",
         "Сысов Валерий Александрович",
         "Артимович Игорь Владимирович"
        ].sorted()

    
    static let women = ["Букаренко Арина Олеговна",
                             "Ефименко Анастасия Владимировна",
                             "Пернацкая Алеся Юрьевна",
                             "Сандова Галина Александровна",
                             "Елисеева Марина Михайловна"
    ].sorted()
}
