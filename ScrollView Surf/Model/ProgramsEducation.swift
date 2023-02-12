//
//  ProgramsEducation.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 12.02.2023.
//

import Foundation

struct ProgramsEducation {
    var titleOfProgram: String
    var isSelected: Bool
    static func getPrograms() -> [ProgramsEducation] {
        let programs: [ProgramsEducation] = [
            ProgramsEducation(titleOfProgram: "iOS", isSelected: false),
            ProgramsEducation(titleOfProgram: "Android", isSelected: false),
            ProgramsEducation(titleOfProgram: "Flutter", isSelected: false),
            ProgramsEducation(titleOfProgram: "Design", isSelected: false),
            ProgramsEducation(titleOfProgram: "QA", isSelected: false),
            ProgramsEducation(titleOfProgram: "iOS", isSelected: false),
            ProgramsEducation(titleOfProgram: "Data Science", isSelected: false),
            ProgramsEducation(titleOfProgram: "Java", isSelected: false),
            ProgramsEducation(titleOfProgram: "Java Script", isSelected: false),
            ProgramsEducation(titleOfProgram: "PM", isSelected: false)
        ]
        return programs
    }
    static func getFakePrograms() -> [ProgramsEducation] {
        let programs: [ProgramsEducation] = [
            ProgramsEducation(titleOfProgram: "iOS", isSelected: false),
            ProgramsEducation(titleOfProgram: "Android", isSelected: false),
            ProgramsEducation(titleOfProgram: "Flutter", isSelected: false),
            ProgramsEducation(titleOfProgram: "Design", isSelected: false),
            ProgramsEducation(titleOfProgram: "QA", isSelected: false),
            ProgramsEducation(titleOfProgram: "PM", isSelected: false)
        ]
        return programs
    }
}


