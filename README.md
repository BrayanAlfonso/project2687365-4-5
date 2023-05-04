# En el presente repositorio presento los talleres 4 y 5 de Java Avanzado, los cuales consistian primero; en los tipos de conexiones que podemos utilizar para conectar un proyecto a una base de datos, mas adelante mostrare los pantallazos de las conexiones totalmente funcionales de la "peor" a la "mejor", ademas tambien en el taller 5 logramos encriptar una contraseña en la base de datos y posteriormente desencriptarla, que también tiene sus respectivos pantallazos mas adelante.

# Taller 4 Conexiones base de datos:

# Primera conexión (BasicConnection)
![image](https://user-images.githubusercontent.com/126422513/236090968-92b25019-691a-4e56-9f82-a52fe5592a89.png)

# Segunda conexión (BasicConnectionWithResources)
![image](https://user-images.githubusercontent.com/126422513/236091330-d338e7bc-b3f0-4d47-9f7e-7d33255ae383.png)

# Tercera conexión (BasicConnectionSingleton -  UseBasicConnectionSingleton)
En ella primero creamos la clase BasicConnectionSingleton en dónde hacemos la conexión y despues llamamos o utilizamos dicha clase en otra clase que se llama UseBasicConnectionSingleton en dónde tenemos la clase de ejecución.
![image](https://user-images.githubusercontent.com/126422513/236091367-cc7ad7e6-90e3-4444-8863-27118cb3eadf.png)

# Cuarta conexión ( ConnectionPool - UseConnectionPool)
En ella primero creamos la clase ConnectionPool en dónde hacemos la conexión y tambien limitamos las conexiones posibles a la misma y despues llamamos o utilizamos dicha clase en otra clase que se llama UseConnectionPool en dónde tenemos la clase de ejecución.
![image](https://user-images.githubusercontent.com/126422513/236091404-44d712ec-e033-4a6c-a90e-7455bf787702.png)

# Taller 5 Encrypt y Decrypt
Como se puede observar, ya se cambio el tipo de dato del campo user_password de varchar a varbinary, ademas de que con ayuda de la herramienta dada por el profesor, encriptamos un mensaje el cual pusimos de contraseña para el usuario que creamos con la siguiente sintaxis de codigo 
INSERT INTO brtechnology.users_tbl (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',
AES_ENCRYPT('password',
'$2a$12$hC77LspyLSLs9L1EGO2G3ODPNocQhIjgWlNznT//vBOz85YaOQbJu'));

![image](https://user-images.githubusercontent.com/126422513/236094921-020fe30a-1896-4502-b992-d1f198e8d6ba.png)

Al desencriptarlo con la siguiente sintaxis de codigo SELECT *,CAST(AES_DECRYPT(user_password,
'$2a$12$hC77LspyLSLs9L1EGO2G3ODPNocQhIjgWlNznT//vBOz85YaOQbJu') AS CHAR(50))
end_data FROM users_tbl WHERE user_id = 2;	
obtenemos lo que vemos en la imagen:
![image](https://user-images.githubusercontent.com/126422513/236095196-c1e310fa-3dd1-4b6f-aad0-e41c4c79daf1.png)


