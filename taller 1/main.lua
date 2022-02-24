OR, XOR, AND = 1, 3, 4

function bitoper(a, b, oper)
   local r, m, s = 0, 2^32
   repeat
      s,a,b = a+b+m, a%m, b%m
      r,m = r + m*oper%(s-a-b), m/2
   until m < 1
   return r
end
--Empieza implementacion
function calcMinRun(n)
  local tam = 11000
  local r = 0 
  while n >= tam do
    r = bitoper(r, bitoper(n,1,AND), OR)
    n = n / 2
  end
  return math.floor(n + r)
end

function insertionSort(arr, left, right)
    for i = left + 1, right + 1 do

      local j = i

      while (j > left) and (arr [j] < arr[j - 1]) do
        aux = arr[j]
        arr[j] = arr[j - 1]
        arr[j - 1] = aux
        j = j - 1
      end
    end 
end

function merge (arr, l, m, r)
    local len1 = m - l + 1
    local len2 = r - m
    left = {}
    right = {}

    for i = 1, len1 do
      table.insert(left, arr[l + i])
    end
    for i = 1, len2 do
      table.insert(right, arr[m + 1 + i])
    end

    local i = 1
    local j = 1
    local k = 2

    while (i < len1) and (j < len2) do
      if (left[i] <= right[j]) then
        arr[k] = left[i]
        i = i + 1
      else
        arr[k] = right[j]
        j = j + 1
      end
      k = k + 1
    end

    while (i < len1) do
      arr[k] = left[i]
      k = k + 1
      i = i + 1
    end
      
    while (j < len2) do
      arr[k] = right[j]
      k = k + 1
      j = j + 1
    end
  end


function timSort(arr)
  local n = table.getn(arr)
  minRun = calcMinRun(n)
  for start = 1, n, minRun do
    ending = math.min(start + minRun - 1, n - 1)
    insertionSort(arr, start, ending)
  end
      
  local size = minRun
  while (size < n) do
    for left = 1, n , 2 * size do
        mid = math.min(n - 1, left + size - 1)
        right = math.min(((left + 2) * (size - 1)), (n - 1))
    end
    if (mid < right) then
        merge(arr, left, mid, right)
    end
    size = 2 * size
  end
  return arr
end

-- pruebas
print("Inicia prueba")
for i = 1, 10001, 100 do
  array = {}
  for j = 1, i do
    table.insert(array, math.random(-500,500))
  end
  tiempoInicial = os.clock()
  timSort(array)
  print("tiempo de ejecucion con ", i, "elementos ->", (os.clock()-tiempoInicial)*1000)
endarray = {}
end