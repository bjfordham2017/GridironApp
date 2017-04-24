//
//  ViewController.swift
//  GridironApp
//
//  Created by Brent Fordham on 4/24/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    typealias ScoreBoard = (teamOne: Int, teamTwo: Int)
    
    var currentGame: ScoreBoard = (0, 0)
    
    var teamOneScoringHistory: [ScoringEvent?] = []
    
    var teamTwoScoringHistory: [ScoringEvent?] = []
    
    @IBOutlet var teamOneScore: UIButton!
    
    @IBOutlet var teamTwoScore: UIButton!
    
    func updateDisplay() {
    teamOneScore.setTitle(currentGame.teamOne.description,
                               for: .normal)
    teamTwoScore.setTitle(currentGame.teamTwo.description,
                               for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateDisplay()
    }
    
    @IBAction func teamOneTouchdown(_ sender: UIButton) {
        teamOneScoringHistory.append(.touchdown)
        currentGame.teamOne += ScoringEvent.touchdown.pointValue
        updateDisplay()
    }
    
    @IBAction func teamTwoTouchdown(_ sender: UIButton) {
        teamTwoScoringHistory.append(.touchdown)
        currentGame.teamTwo += ScoringEvent.touchdown.pointValue
        updateDisplay()
    }
    
    @IBAction func teamOneFieldGoal(_ sender: UIButton) {
        teamOneScoringHistory.append(.fieldGoal)
        currentGame.teamOne += ScoringEvent.fieldGoal.pointValue
        updateDisplay()
    }
    
    @IBAction func teamTwoFieldGoal(_ sender: UIButton) {
        teamTwoScoringHistory.append(.fieldGoal)
        currentGame.teamTwo += ScoringEvent.fieldGoal.pointValue
        updateDisplay()
    }
    
    @IBAction func teamOneExtraPoint(_ sender: UIButton) {
        teamOneScoringHistory.append(.extraPoint)
        currentGame.teamOne += ScoringEvent.extraPoint.pointValue
        updateDisplay()
    }
    
    @IBAction func teamTwoExtraPoint(_ sender: UIButton) {
        teamTwoScoringHistory.append(.extraPoint)
        currentGame.teamTwo += ScoringEvent.extraPoint.pointValue
        updateDisplay()
    }
    
    @IBAction func teamOneSafety(_ sender: UIButton) {
        teamOneScoringHistory.append(.safety)
        currentGame.teamOne += ScoringEvent.safety.pointValue
        updateDisplay()
    }
    
    @IBAction func teamTwoSafety(_ sender: UIButton) {
        teamTwoScoringHistory.append(.safety)
        currentGame.teamTwo += ScoringEvent.safety.pointValue
        updateDisplay()
    }
    
    @IBAction func teamOneTwoPointConversion(_ sender: UIButton) {
        teamOneScoringHistory.append(.safety)
        currentGame.teamOne += ScoringEvent.safety.pointValue
        updateDisplay()
    }
    
    @IBAction func teamTwoTwoPointConversion(_ sender: UIButton) {
        teamTwoScoringHistory.append(.twoPointConversion)
        currentGame.teamTwo += ScoringEvent.twoPointConversion.pointValue
        updateDisplay()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        currentGame = (0, 0)
        teamOneScoringHistory = []
        teamTwoScoringHistory = []
        updateDisplay()
    }
    
    @IBAction func printTeamOneHistory(_ sender: UIButton) {
        for element in teamOneScoringHistory {
            if let event = element {
                print("Team One scored one \(event.description) for \(event.pointValue) point(s)")
            } else {
                print("Team One has not scored yet.")
            }
        }
    }
    
    @IBAction func printTeamTwoHistory(_ sender: UIButton) {
        for element in teamTwoScoringHistory {
            if let event = element {
                print(" Team Two scored one \(event.description) for \(event.pointValue) point(s)")
            } else {
                print("Team Two has not scored yet.")
            }
        }
    }
    
}

