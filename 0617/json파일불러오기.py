import json

file_path = "test1.json"

with open(file_path, 'r') as file:
    data = json.load(file)
    print(data)