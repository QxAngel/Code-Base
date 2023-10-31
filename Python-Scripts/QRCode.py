 # author : Angel - @qx4ngel

 #VISITA MI GITHUB PARA MAS ↓
 #https://github.com/QxAngel

import qrcode #Instalar antes con  "pip install qrcode"

# Texto o URL que deseas codificar en el QR
data = "https://qxangel.github.io/repo/"

# Crear un objeto QRCode
qr = qrcode.QRCode(
    version=1,  # Versión del código QR (ajustable)
    error_correction=qrcode.constants.ERROR_CORRECT_L,  # Nivel de corrección de errores
    box_size=10,  # Tamaño de los bloques del código QR
    border=4,  # Margen
)

# Agregar los datos al código QR
qr.add_data(data)
qr.make(fit=True)

# Crear una imagen QR
img = qr.make_image(fill_color="black", back_color="white")

# Mostrar el código QR en la terminal o consola
img.show()
