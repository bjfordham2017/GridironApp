//
//  GridironScoreTypes.swift
//  GridironApp
//
//  Created by Brent Fordham on 4/24/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

enum ScoringEvent: CustomStringConvertible {
    case touchdown
    case fieldGoal
    case extraPoint
    case twoPointConversion
    case safety
    
    var pointValue: Int {
        
        switch self {
        case .touchdown:
            return 6
        case .fieldGoal:
            return  3
        case .extraPoint:
            return 1
        case .twoPointConversion:
            return 2
        case .safety:
            return 2
        }
    }
    
    var description: String {
        switch self {
        case .touchdown:
            return "Touchdown"
        case .fieldGoal:
            return  "Field Goal"
        case .extraPoint:
            return "Extra Point"
        case .twoPointConversion:
            return "Two Point Conversion"
        case .safety:
            return "Safety"
        }

    }
    
}
