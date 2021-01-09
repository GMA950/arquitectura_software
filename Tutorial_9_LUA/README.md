Lua es un lenguaje de programacion de origen brasileño, multiparadigma, imperativo, estructurado, ligero y multiplataforma.

Enfocado principalmente en el scripting.

Su sintaxis es simple y soporta POO

Este lenguaje se tipea dinámicamente, se ejecuta al interpretar bytecode con una máquina virtual basada en registros y tiene administración de memoria automática con recolección de basura incremental. Es ideal para configuración, creación de scripts y prototipado rápido.

Este lenguaje se ha utilizado en muchas aplicaciones industriales, como Adobe Photoshop Lightroom y debido a que Lua compilado es pequeño (en la mayoría de los casos), veloz y tiene una licencia permisiva ha ganado seguidores entre los desarrolladores de videojuegos. El motor gráfico de Crytek, CryEngine, está programado en Lua, además de en C++. Empresas como VALVe, EA Games y Bethesda decidieron trasladar sus bases de C++ a Lua dado que este es más compatible gráficamente con kernel. Algunos usos de Lua: 

Juegos como WOW, Half Life 2, Tibia, STALKER, Grim Fandango, Ragnarok, MTA, Roblox, Detroit Become Human, The binding of Isaac.

Instrucciones:

### sudo apt install lua5.3	

Interpretador:

### lua

Correr programas:

### lua hello.lua

¿A que requisitos no funcionales corresponde?

- Lua es un lenguaje muy fácil de aprender con una sintaxis sencilla y una estructura de datos muy flexible
- Lua es extremadamente facil de integrar como un lenguaje de scripts en C/C++
- A diferencia de C# Lua es más facilemente soportado en cualquier plataforma fuera del ecosistema windows.
- Se pueden crear facilemente librerias escritas en C para Lua.
- Lua al ser un lenguaje dinamico posee recoleccion de basura (garbage collection) lo cual le quita trabajo extra al desarrollador
- Lua es un lenguaje bastante seguro, si hay algo mal o algo falla te lo hará saber inmediatamente, aparte de que se puede implementar un manejador de errores mucho mas facil que en C/C++
- Permite cambios al codigo en tiempo de ejecucion (run-time code changes)
- Como con los otros lenguajes de script provee una API diferente de tu aplicación a los usuarios para que la expandan los usuarios sin tener que exponer partes criticas de tu sistema al publico
