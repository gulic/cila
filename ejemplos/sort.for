      subroutine sort (a, m)
      real a(1:m), aux
      integer m, i, j
      do 20 i = 1, m - 1
        do 10 j = i + 1, m
          if (a(j) .lt. a(i)) then
            aux  = a(j)
            a(j) = a(i)
            a(i) = aux
          endif
 10     continue
 20   continue
      return
      end
