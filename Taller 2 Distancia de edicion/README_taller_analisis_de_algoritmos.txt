						README

En este programa se encuentra la minima distancia de edición entre dos cadenas de caracteres. 
Se cuenta con el algoritmo implementado en las diferentes etapas necesarias para llegar a un algoritmo 
con backtracking.

ALGORITMO INGENUO:
En este archivo únicamente se utiliza recursión para llegar al resultado. 
-Se utilizaron las cadenas "SUNDAY" y "SATURDAY" las cuales dieron un resultado de 3 el cual es correcto.
-Se utilizaron las cadenas "BOOK" y "BACK" las cuales dieron un resultado de 3 el cual es correcto.
 
ALGORITMO CON MEMOIZACIÓN:
En este archivo se utilizan tablas para llegar al resultado y se siguen utilizando llamados recursivos, 
los returns se convierten en asignaciones a la tabla de memoizado y se consulta si las posiciones de la tabla 
ya han sido calculadas.

ALGORITMO BOTTOM-UP:
En este archivo se utiliza la tabla de memoizado pero los llamados recursivos a la función se convierten en
asignaciones a la tabla.

ALGORITMO CON BACKTRACKING:
En este archivo se almacenan en otra tabla los indices que indican los pasos que se tomaron para llegar a la 
respuesta final. Ademas, se imprimen las diferentes instrucciones que se llevan a cabo para llegar al 
resultado.
  




