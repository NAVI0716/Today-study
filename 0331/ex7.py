import csv
with open("data.csv",'w',newline='') as f:
    wd=csv.writer(f)
    wd.writerow("10")