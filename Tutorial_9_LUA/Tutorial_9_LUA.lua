-- en lua se comenta con --

-- un hola mundo basico

print("Hello World!")

-- definicion de variables:
local a, b

-- Inicializacion
a = 10
b = 30

print("valor de a:", a)

print("valor de b:", b)

-- intercambio de variables
b, a = a, b

print("valor de a:", a)

print("valor de b:", b)

f = 70.0/3.0
print("valor de f", f)

-- multideclaracion

g,l = 20,30

-- TIPOS

print(type("tipo variables"))   --> string
t = 10

print(type(5.8*t))               --> number
print(type(true))                --> boolean
print(type(print))               --> function
print(type(nil))                 --> nil
print(type(type(ABC)))           --> string


-- while

while( t < 15 )
do
    t=t+1
   print("\nArquitectura de Software 2020\n")
end

-- for
local arg = {1,2,3,4,5,6,7,8,9,10}
local result = 0

for i,v in ipairs(arg) do
    result = result + v
 end

print("Promedio usando For ",result/#arg, "\n")

-- funciones

function max(num1, num2)

    if (num1 > num2) then
       result = num1;
    else
       result = num2;
    end
 
    return result; 
 end

print("EL maximo entre 10 y 4 es: ",max(10,4), "\n")

-- Strings

string1 = "Lua";

print(string.upper(string1))
print(string.lower(string1))

string = "Tutorial Lua"

-- reemplazo de substrings
newstring = string.gsub(string,"Tutorial","Arquitectura2020")
print("El nuevo string es "..newstring)

string = "Lua Tutorial"

-- reemplazo de strings
print(string.find(string,"Tutorial"))
reversedString = string.reverse(string)
print("El nuevo string es",reversedString)


stringA = "Lua"
stringB = "Tutorial"

number1 = 10
number2 = 20

-- Basico
print(string.format("Basic formatting %s %s",stringA,stringB))

-- Fecha
dia = 2; mes = 1; ano = 2021
print(string.format("Date formatting %02d/%02d/%03d", dia, mes, ano))

-- Decimal
print(string.format("%.4f",1/3))

-- Concatenacion ..
print("Concatenated string",stringA..stringB)

-- Length
print("Length of string1 is ",string.len(stringA))

-- Repetido
repeatedString = string.rep(stringA,3)
print(repeatedString)

--arrays

array = {"Lua", "Tutorial"}

for i = 0, 2 do
   print(array[i])
end

-- Llenamos un array de 3x3
array = {}

for i=1,3 do
   array[i] = {}
	
   for j=1,3 do
      array[i][j] = i*j
   end
	
end

-- Lo imprimimos

for i=1,3 do

   for j=1,3 do
      print(array[i][j])
   end
	
end

print("\n\n")

-- Stateless Iterators

function square(iteratorMaxCount,currentNumber)

    if currentNumber<iteratorMaxCount
    then
       currentNumber = currentNumber+1
       return currentNumber, currentNumber*currentNumber
    end
     
 end
 
 function squares(iteratorMaxCount)
    return square,iteratorMaxCount,0
 end  
 
 for i,n in squares(3)
 do 
    print(i,n)
 end

 -- Un elemento importante de lua son las tablas, no son valores ni variables

 print("\n Tablas")

 -- Simple empty table
mitabla = {}
print("El tipo de mi tabla es ",type(mitabla))

mitabla[1]= "Lua"
mitabla["wow"] = "Tutorial"

print("El elemento en el indice 1 de mitabla es", mitabla[1])
print("El elemenento en el indice wow de mitabla es", mitabla["wow"])

-- alternatetable and mytable refers to same table
alternatetable = mitabla

print("El elemento en el indice 1 de alternatetable es ", alternatetable[1])
print("El elemenento en el indice wow de alternatetable es", alternatetable["wow"])

alternatetable["wow"] = "Cambiado"

print("El elemenento en el indice wow de mitabla es ", mitabla["wow"])

-- only variable released and and not table
alternatetable = nil
print("alternatetable es ", alternatetable)

-- mytable is still accessible
print("El elemenento en el indice wow de mitabla es ", mitabla["wow"])

mitabla = nil
print("mitabla es ", mitabla)


print("\n Concatenacion de tablas")

-- concatenacion de tablas

frutas = {"platano","naranja","manzana"}

-- retorna una tabla de strings concatenados
print("String concatenado ",table.concat(frutas))

--concatenacion basada en caracteres
print("String concatenado  ",table.concat(frutas,", "))

-- concatena las frutas basado en el indice
print("String concatenado  ",table.concat(frutas,", ", 2,3))

-- inserta una fruta al final
table.insert(frutas,"mango")
print("Fruta en el indice 4 es",frutas[4])

--insert fruit at index 2
table.insert(frutas,2,"uvas")
print("Fruta en el indice 2 es ",frutas[2])

--print("El maximo de elementos en la tabla es",table.maxn(frutas))

print("El ultimo elemento es",frutas[5])

table.remove(frutas)
print("El elemento previo es",frutas[5])

-- ORDENAMIENTO DE TABLAS

fruits = {"platano","naranja","manzana","uvas"}

for k,v in ipairs(frutas) do
   print(k,v)
end

table.sort(frutas)
print("tabla ordenada")

for k,v in ipairs(frutas) do
   print(k,v)
end

-- MODULOS

print("\nMODULOS\n")

miModulodeMatematicas = require("mathpack")

miModulodeMatematicas.suma(10,20)
miModulodeMatematicas.sub(30,20)
miModulodeMatematicas.mul(10,20)
miModulodeMatematicas.div(30,20)

-- Coroutines

print("\nCoroutines\n")

-- ejecucion "paralela" en threads

co = coroutine.create(function ()
    for i=1,10 do
      print("co", i)
      coroutine.yield()
    end
  end)

coroutine.resume(co)

print(coroutine.status(co)) -- estado de la coroutine

coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co)
coroutine.resume(co) -- llegamos al 10
coroutine.resume(co)
coroutine.resume(co)

print(coroutine.resume(co))

-- las coroutines pueden compartir data entre ellas

-- el resume puede enviar argumentos

print("\nel resume puede enviar argumentos\n")

co = coroutine.create(function (a,b,c)
    print("co", a,b,c)
  end)
coroutine.resume(co, 1, 2, 3)

-- y el yield tambien
print("\ny el yield tambien\n")

co = coroutine.create(function (a,b)
    coroutine.yield(a + b, a - b)
  end)
print(coroutine.resume(co, 20, 10))

-- yield tambien devuelve cualquier argumento extra
print("\nyield tambien devuelve cualquier argumento extra\n")

co = coroutine.create (function ()
    print("co", coroutine.yield())
  end)
coroutine.resume(co)
coroutine.resume(co, 4, 5)

-- cualquier valor retornado dentro de la coroutine es devuelto en el resume
print("\ncualquier valor retornado dentro de la coroutine es devuelto en el resume\n")

co = coroutine.create(function ()
    return 6, 7
  end)
print(coroutine.resume(co))


-- tambien existen pipes y filters

-- veamos el ejemplo del productor/consumidor EJEMPLO FINAL

print("\nProductor Consumidor, vaya apretando ENTER para continuar, finalice con ctrl+c\n")

  function receive (prod)
    local status, value = coroutine.resume(prod)
    return value
  end
  
  function send (x)
    coroutine.yield(x)
  end
  
  function producer ()
    return coroutine.create(function ()
      while true do
        local x = io.read()     -- produce un nuevo valor
        send(x)
      end
    end)
  end
  
  function filter (prod)
    return coroutine.create(function ()
      local line = 1
      while true do
        local x = receive(prod)   -- consigue un nuevo valor
        x = string.format("%5d %s", line, x)
        send(x)      -- y se lo manda al consumidor
        line = line + 1
      end
    end)
  end
  
  function consumer (prod)
    while true do
      local x = receive(prod)   -- consigue un nuevo valor
      io.write(x, "\n")          -- al apretar ENTER se consume el nuevo valor
    end
  end

  consumer(filter(producer()))
