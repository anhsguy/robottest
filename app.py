import sys

for x in sys.path:
	print ('\t'+x)

	# C:\Users\ndiuser\OneDrive\Documents\learning\robotframework
	# C:\ProgramData\anaconda3\python311.zip
	# C:\ProgramData\anaconda3\DLLs
	# C:\ProgramData\anaconda3\Lib
	# C:\ProgramData\anaconda3
	# C:\Users\ndiuser\AppData\Roaming\Python\Python311\site-packages
	# C:\ProgramData\anaconda3\Lib\site-packages
	# C:\ProgramData\anaconda3\Lib\site-packages\win32
	# C:\ProgramData\anaconda3\Lib\site-packages\win32\lib
	# C:\ProgramData\anaconda3\Lib\site-packages\Pythonwin
import platform

x = dir(platform)
for y in x:
	print(y)
