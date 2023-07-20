# en la terminal escribe "pip install PyAutoGUI" para instalar (NECESARIO)
import pyautogui as pg 

import time                    

# el tiempo que tarda en empezar a spamear recomiendo dejarlo en "5"
time.sleep(5)

# cambiar por el numero de veces que quieres enviar el mensaje
for i in range(6):

# Remplaza por el mensaje que deseas spamear
    pg.write("Spam Bot Hecho Por @6ky_l")
    pg.press("enter")
    