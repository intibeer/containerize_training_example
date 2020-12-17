import os

processdate = os.getenv('processdate', None)
datapath = os.getenv('datapath', None)
param1 = os.getenv('param1', None)
param2 = os.getenv('param2', None)

print("Train model!")

print(
    processdate, datapath, param1, param2
)