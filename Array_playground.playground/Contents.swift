import UIKit

var a1 = [1, 2, 3]
print(a1)
a1.remove(at: 1)
print(a1)
print(a1[1])

var a2 = [Int]()
print(a2)

var a3 = ["Bhavani", "vidya", "Maha", "Gayatri"]
a3.append("Sindhu")
print(a3)

a3.insert("Minnie", at: 2)
print(a3)

a3.append("er")
print(a3)

a3.append("eras")
print(a3)

print(a3.count)
a3.sort()
print(a3)

a3.reverse()
print(a3)
a3.swapAt(1,2)
print(a3)
a3.remove(at: 1)
a3.remove(at: 1)
print(a3)

// Dictionaries:
print()
var d1 = [1:"bhavani", 2:"Teju", 43:"Kavitha", 10:"Shravani"]
print(d1)
d1[22] = "varsh";
print(d1)
print(d1.count)
var d2 = [1:3,2:6,3:9,4:12]
print(d2)
d2[3] = 4
print(d2)
d2.removeValue(forKey: 3)
print(d2)

for(key, value) in d2{
    print(key)
}
for(key, value) in d2{
    print(value)
}
for(key, value) in d2{
    print("\(key)-\(value)")
}

// Sets
print()
var players : Set<String> = ["David Warner", "Virat Kohli", "Kane Williamson", "Steve Smith"]
print(players)
print(players.count)
print(players.contains("Virat"))

players.insert("Maxwell")
print(players)
players.remove("David Warner")
print(players)

var s2 : Set<Int> = [1,2,3,4]
var s3 : Set<Int> = [10,2,30,40]
var uS2 : Set<Int> = s3.union(s2)
var iS2 : Set<Int> = s3.intersection(s2)
print(uS2)
print(iS2)
