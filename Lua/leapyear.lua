function leapyear(n)
    if n%400 == 0 then
        print("leap year")
    elseif n%100 == 0 then
        print("not leap year")
    elseif n%4 == 0 then
        print("leap year")
    else
        print("not leap year")
    end
end

print("enter a number:")
a = io.read("*number")  
leapyear(a)