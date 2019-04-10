import os

def create_folder(folderName):
    os.mkdir("G:\\" + folderName)
    
    
def create_subfolder(subfolderName):
    os.mkdir("G:\\Demo_test_folder\\" + subfolderName)
    
    
def concatinate_two_values(value1, value2):
    value3 = value1 + value2
    return value3