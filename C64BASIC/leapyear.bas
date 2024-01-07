1 rem leap year program
10 ty=0:i$="":r$="":rem init test year, isleap and reason

100 rem main program
101 ty=1900:r$="":gosub 200:rem test 1900
102 print "year:";ty;"result:";i$: print "reason:";r$: print
103 ty=2000:r$="":gosub 200:rem test 2000
104 print "year:";ty;"result:";i$: print "reason:";r$: print
105 ty=2023:r$="":gosub 200:rem test 2023
106 print "year:";ty;"result:";i$: print "reason:";r$: print
107 ty=2024:r$="":gosub 200:rem test 2024
108 print "year:";ty;"result:";i$: print "reason:";r$: print
110 end

200 rem calculate if leap year and reason
201 di=ty-int(ty/4)*4:rem mod 4 on test year
202 dc=ty-int(ty/100)*100:rem mod 100 on test year
203 dm=ty-int(ty/400)*400:rem mod 400 on test year
204 i$="f"

205 rem main algorithm
206 if di=0 and dc=0 and dm=0 then i$="t":goto 208
207 if di=0 and dc<>0 then i$="t"

208 rem reason generation
209 if i$="t" and di=0 and dm=0 then r$="div by 4, 400 year rule": return
210 if i$="t" and di=0 then r$="div by 4": return
211 if di=0  and dc=0 then r$="div by 4, 100 year rule":return
212 r$="not div by 4":return
