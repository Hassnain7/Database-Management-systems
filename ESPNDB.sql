CREATE DATABASE IF NOT EXISTS ESPN;
USE ESPN;

CREATE TABLE player (
    P_ID INT PRIMARY KEY,
    P_Name VARCHAR(100) NOT NULL,
    P_Role VARCHAR(200) NOT NULL,
    P_BattingStyle VARCHAR(100) NOT NULL,
    P_BowlingStyle VARCHAR(100) NOT NULL,
    P_DateOfBirth DATE
);

INSERT INTO player (P_ID, P_Name, P_Role, P_BattingStyle, P_BowlingStyle, P_DateOfBirth)
VALUES (1, 'Virat Kohli', 'Batsman', 'Right-handed', 'Right-arm medium', '1988-11-05');

SELECT 
    YEAR(CURRENT_DATE) - YEAR(P_DateOfBirth) - (RIGHT(CURRENT_DATE, 5) < RIGHT(P_DateOfBirth, 5)) AS age 
FROM player;

CREATE TABLE Team (
    T_ID INT PRIMARY KEY,
    T_Name VARCHAR(200) NOT NULL
);

CREATE TABLE Tournament (
    TN_No INT PRIMARY KEY,
    TN_Name VARCHAR(200) NOT NULL,
    TN_Type VARCHAR(200) NOT NULL,
    TN_Format VARCHAR(200) NOT NULL,
    TN_StartDate DATE,
    TN_EndDate DATE,
    TN_TotalMatches INT NOT NULL,
    TN_MatchesPlayed INT NULL,
    TN_MatchesRemaining INT NULL,
    TN_Winner VARCHAR(100),
    TN_RunnerUp VARCHAR(100)
);

CREATE TABLE Matches (
    M_No INT PRIMARY KEY,
    M_Title VARCHAR(200) NOT NULL,
    M_Time TIME,
    M_Date DATE,
    M_Result VARCHAR(200)
);

CREATE TABLE Country (
    C_No INT PRIMARY KEY,
    C_Name VARCHAR(200) NOT NULL
);

CREATE TABLE ScoreBoard (
    SCO_NO INT PRIMARY KEY,
    SCO_StrikeRate DECIMAL(5,3),
    SCO_Extra INT NULL,
    SCO_Economy DECIMAL(3,1),
    SCO_Six INT NOT NULL,
    SCO_Four INT NOT NULL,
    SCO_Out VARCHAR(50) NOT NULL
);

CREATE TABLE ScoreBoardRuns (
    SCO_NO INT PRIMARY KEY,
    ScoreBoard_TotalRuns INT NOT NULL,
    ScoreBoard_Extras INT NOT NULL,
    ScoreBoard_Wickets INT NOT NULL,
    OversPlayed INT NOT NULL
);

CREATE TABLE Squad (
    S_No INT PRIMARY KEY,
    S_Name VARCHAR(100) NULL
);

CREATE TABLE Venue (
    V_ID INT PRIMARY KEY,
    V_Name VARCHAR(100) NOT NULL,
    V_Capacity INT NOT NULL,
    V_EstablishedDate DATE
);

CREATE TABLE PlayerRankings (
    PR_ID INT PRIMARY KEY,
    PR_Department VARCHAR(100) NOT NULL,
    PR_Format VARCHAR(100) NOT NULL,
    PR_Points INT NOT NULL,
    PR_Date DATE
);

CREATE TABLE Stats (
    St_ID INT PRIMARY KEY,
    St_Format VARCHAR(100) NOT NULL,
    St_Matches INT NOT NULL,
    St_Innings INT NULL,
    St_Runs INT NULL,
    St_BattingBest INT,
    St_BowlingBest INT,
    St_BattingAverage DECIMAL(5,2),
    St_BowlingAverage DECIMAL(5,2),
    St_BattingStrikeRate DECIMAL(5,2),
    St_BowlingStrikeRate DECIMAL(5,2),
    St_Hundreds INT,
    St_Fifties INT,
    St_Wickets INT
);

CREATE TABLE Records (
    R_No INT PRIMARY KEY,
    R_Description VARCHAR(100) NOT NULL,
    R_Date DATE
);

CREATE TABLE Commentary (
    C_No INT PRIMARY KEY,
    C_Time TIME, 
    C_Text VARCHAR(500) NOT NULL
);

CREATE TABLE Umpire (
    U_ID INT PRIMARY KEY,
    U_Name VARCHAR(100) NOT NULL,
    U_Country VARCHAR(100) NOT NULL
);

CREATE TABLE Trophy (
    T_No INT PRIMARY KEY,
    T_Name VARCHAR(100) NOT NULL,
    T_Format VARCHAR(100) NOT NULL,
    T_Winner VARCHAR(100)
);

CREATE TABLE Result (
    R_No INT PRIMARY KEY,
    R_Title VARCHAR(100) NOT NULL
);

CREATE TABLE TeamRankings (
    TR_No INT PRIMARY KEY,
    TR_Format VARCHAR(100) NOT NULL,
    TR_Points INT NOT NULL,
    TR_Date DATE
);

CREATE TABLE Series (
    SR_No INT PRIMARY KEY,
    SR_Description VARCHAR(100) NOT NULL,
    SR_Format VARCHAR(50) NOT NULL,
    SR_StartDate DATE,
    SR_EndDate DATE,
    SR_TotalMatches INT NOT NULL,
    SR_MatchesPlayed INT,
    SR_MatchesRemaining INT,
    SR_Winner VARCHAR(100)
);
