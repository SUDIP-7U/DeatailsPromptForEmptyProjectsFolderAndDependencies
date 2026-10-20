import os

base = r"C:/Users/SUDIP/AndroidStudioProjects/MyApplication5/app/src/main/java/com/example/myapplication"
dirs = [
    "data/local",
    "data/remote",
    "data/mapper",
    "data/repository",
    "domain/model",
    "domain/repository",
    "domain/usecase",
    "presentation/ui",
    "presentation/viewmodel",
    "presentation/state",
    "di",
    "utils"
]

for d in dirs:
    path = os.path.join(base, d)
    os.makedirs(path, exist_ok=True)
print("Directories created successfully")
