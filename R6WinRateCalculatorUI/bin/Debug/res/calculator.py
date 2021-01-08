import requests

# Example stats for debugging
blueTeam = [["GGutriedGG.77"], ["ItsMrJellyfish"], ["MeatyMarley"], ["invedetbubble21"], ["Dark_Acquit77"]]
orangeTeam = [["Spoid.GODSENT"], ["GoodBoy.oG"], ["Ddot."], ["RazaH.Liquid"], ["Benjamaster2k"]]

# Gets player stats from API
for i in blueTeam:
    url = 'https://api2.r6stats.com/public-api/stats/' + i[0] + '/pc/generic'
    stats = requests.get(url, headers={'Authorization': 'Bearer b47d5f65-5f4a-4afc-bb35-551cfa21e8e8'})
    statsdict = dict(stats.json())
    progressiondict = dict(statsdict["progression"])
    statsdict2 = dict(statsdict["stats"])
    generaldict = dict(statsdict2["general"])
    i.append(generaldict["wl"] * 50)
    i.append(progressiondict["level"])
    print(i[1], i[2])
for i in orangeTeam:
    url = 'https://api2.r6stats.com/public-api/stats/' + i[0] + '/pc/generic'
    stats = requests.get(url, headers={'Authorization': 'Bearer b47d5f65-5f4a-4afc-bb35-551cfa21e8e8'})
    statsdict = dict(stats.json())
    progressiondict = dict(statsdict["progression"])
    statsdict2 = dict(statsdict["stats"])
    generaldict = dict(statsdict2["general"])
    i.append(generaldict["wl"] * 50)
    i.append(progressiondict["level"])
    print(i[1], i[2])

# Calculates reliability
blueReliability = 100
orangeReliability = 100
for i in blueTeam:
    if i[2] <= 25:
        blueReliability -= 20
for i in orangeTeam:
    if i[2] <= 25:
        orangeReliability -= 20

# Calculates winrate
blueRating = 0
orangeRating = 0
for i in blueTeam:
    blueRating += i[1]
for i in orangeTeam:
    orangeRating += i[1]
blueRating /= 5
blueWinChance = blueRating / orangeRating * 50
orangeWinChance = 100 - blueWinChance

# Prints winrate and reliability
print(str(round(blueRating / 100, 2)), " vs ", str(round(orangeRating / 100, 2)))
print("Blue has a win chance of " + str(round(blueWinChance, 1)) + "%")
print("Orange has a win chance of " + str(round(orangeWinChance, 1)) + "%")
if blueReliability <= orangeReliability:
    print("Reliability: " + str(blueReliability))
    realiability = blueReliability
else:
    print("Reliability: " + str(orangeReliability))
    reliability = orangeRealiability

# Writes data to text file to transfer to interface
data = open("res\data.txt","w")
blueWinChance = round(blueWinChance, 0)
for i in blueTeam:
    data.write(i[0])
    data.write("\n")
for i in orangeTeam:
    data.write(i[0])
    data.write("\n")
data.write(str(realiability))
data.write("\n")
data.write(str(blueWinChance))
