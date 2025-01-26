/// @description Insert description here
// You can write your code in this editor

alpha = 0
alphaMax = 0.75

grades = ["S++","S","A","B","C","D","F"]
minScore = 0
maxScore = 1750
workingScore = clamp(global.score,minScore,maxScore)

ind = round((1- (workingScore/maxScore)) * 6)

endGrade = grades[ind]

statsIn = false