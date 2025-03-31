userData = { ["userID"] = { 0 }, ["userName"] = { "" }, ["Balance"] = { 0 } }

print("register new user")
print("enter user name")
userData["userName"] = io.read("l")

userData["userID"] = math.random(255)

file = toString(userData["userID"]) + ".json"

io.open(toString(file, w))
io.write(serialise(userData))
io.close(file)
