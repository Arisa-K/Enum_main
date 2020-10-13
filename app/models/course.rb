class Course < ApplicationRecord
    belongs_to :user


    enum year: {
        "1学年": 10,
        "2学年": 20,
        "3学年": 30,
        "4学年": 40,
    }
    enum semester: {
        "春学期": 10,
        "秋学期": 20,
    }
    enum date: {
        "月": 10,
        "火": 20,
        "水": 30,
        "木": 40,
        "金": 50,
        "土": 60,
    }
    enum period: {
        "1限": 10,
        "2限": 20,
        "3限": 30,
        "4限": 40,
        "5限": 50,
        "6限": 60,
    }

end