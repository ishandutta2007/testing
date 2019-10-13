from pathlib import Path
mypath = '/'.join(str(Path().absolute()).split("/")[:6])
print(mypath)
