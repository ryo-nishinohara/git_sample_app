# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lab.create!(
    name: "吉田研究室",
    major: "電子エレクトロニクス",
    core_time_start_hour: 9,
    core_time_start_min: 00,
    core_time_end_hour: 18,
    core_time_end_min: 00,
    professor: "吉田銀次郎"
)
Lab.create!(
    name: "田中研究室",
    major: "パワーデバイス",
    core_time_start_hour: 12,
    core_time_start_min: 00,
    core_time_end_hour: 15,
    core_time_end_min: 00,
    professor: "田中総"
)

Course.create!(
    name: "量子力学A",
    classification: "必修",
    class_period_day_of_week: "火",
    class_period_timetable: 2,
    credit: 2,
    professor: "山中由也",
    ratio_exam: 7,
    ratio_attendance: 3,
    necessity_of_attendance: "必要"
)
Course.create!(
    name: "電磁気学A",
    classification: "必修",
    class_period_day_of_week: "木",
    class_period_timetable: 3,
    credit: 2,
    professor: "川西哲也",
    ratio_exam: 10,
    ratio_attendance: 0,
    necessity_of_attendance: "不要"
)