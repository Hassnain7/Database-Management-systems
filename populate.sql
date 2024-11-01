INSERT INTO player (P_ID, P_Name, P_Role, P_BattingStyle, P_BowlingStyle, P_DateOfBirth)
VALUES 
    (1, 'Virat Kohli', 'Batsman', 'Right-handed', 'Right-arm medium', '1988-11-05'),
    (2, 'Steve Smith', 'Batsman', 'Right-handed', 'Right-arm leg break', '1989-06-02'),
    (3, 'Ben Stokes', 'All-Rounder', 'Left-handed', 'Right-arm fast-medium', '1991-06-04');
INSERT INTO Team (T_ID, T_Name)
VALUES 
    (1, 'India'),
    (2, 'Australia'),
    (3, 'England');
INSERT INTO Tournament (TN_No, TN_Name, TN_Type, TN_Format, TN_StartDate, TN_EndDate, TN_TotalMatches, TN_MatchesPlayed, TN_MatchesRemaining, TN_Winner, TN_RunnerUp)
VALUES 
    (1, 'World Cup', 'International', 'ODI', '2023-10-05', '2023-11-14', 48, 47, 1, 'India', 'Australia'),
    (2, 'Ashes', 'International', 'Test', '2023-06-16', '2023-07-31', 5, 5, 0, 'England', 'Australia');
INSERT INTO Matches (M_No, M_Title, M_Time, M_Date, M_Result)
VALUES 
    (1, 'India vs Australia', '14:00:00', '2023-10-06', 'India won by 5 wickets'),
    (2, 'England vs Australia', '11:00:00', '2023-07-01', 'Australia won by 43 runs');
INSERT INTO Country (C_No, C_Name)
VALUES 
    (1, 'India'),
    (2, 'Australia'),
    (3, 'England');
INSERT INTO ScoreBoard (SCO_NO, SCO_StrikeRate, SCO_Extra, SCO_Economy, SCO_Six, SCO_Four, SCO_Out)
VALUES 
    (1, 140.625, 5, 3.8, 4, 10, 'Caught'),
    (2, 110.345, 2, 4.5, 2, 8, 'Bowled');
INSERT INTO ScoreBoardRuns (SCO_NO, ScoreBoard_TotalRuns, ScoreBoard_Extras, ScoreBoard_Wickets, OversPlayed)
VALUES 
    (1, 320, 12, 8, 50),
    (2, 289, 8, 9, 50);
INSERT INTO Squad (S_No, S_Name)
VALUES 
    (1, 'Indian Squad'),
    (2, 'Australian Squad');
INSERT INTO Venue (V_ID, V_Name, V_Capacity, V_EstablishedDate)
VALUES 
    (1, 'Eden Gardens', 68000, '1864-01-01'),
    (2, 'Lord’s Cricket Ground', 30000, '1814-06-22');
INSERT INTO PlayerRankings (PR_ID, PR_Department, PR_Format, PR_Points, PR_Date)
VALUES 
    (1, 'Batting', 'ODI', 895, '2023-11-01'),
    (2, 'Bowling', 'Test', 820, '2023-11-01');
INSERT INTO Records (R_No, R_Description, R_Date)
VALUES 
    (1, 'Most runs in a calendar year', '2018-12-25'),
    (2, 'Fastest century', '2015-01-15');
INSERT INTO Commentary (C_No, C_Time, C_Text)
VALUES 
    (1, '14:30:00', 'What a shot! That went for six.'),
    (2, '15:20:00', 'Brilliant bowling! A perfect yorker.');
INSERT INTO Umpire (U_ID, U_Name, U_Country)
VALUES 
    (1, 'Aleem Dar', 'Pakistan'),
    (2, 'Kumar Dharmasena', 'Sri Lanka');
INSERT INTO Trophy (T_No, T_Name, T_Format, T_Winner)
VALUES 
    (1, 'World Cup Trophy', 'ODI', 'India'),
    (2, 'Ashes Urn', 'Test', 'England');
INSERT INTO Result (R_No, R_Title)
VALUES 
    (1, 'India won by 5 wickets'),
    (2, 'Australia won by 43 runs');
INSERT INTO TeamRankings (TR_No, TR_Format, TR_Points, TR_Date)
VALUES 
    (1, 'ODI', 125, '2023-11-01'),
    (2, 'Test', 120, '2023-11-01');
INSERT INTO Series (SR_No, SR_Description, SR_Format, SR_StartDate, SR_EndDate, SR_TotalMatches, SR_MatchesPlayed, SR_MatchesRemaining, SR_Winner)
VALUES 
    (1, 'Ashes 2023', 'Test', '2023-06-16', '2023-07-31', 5, 5, 0, 'England'),
    (2, 'Border-Gavaskar Trophy 2023', 'Test', '2023-02-09', '2023-03-13', 4, 4, 0, 'India');

