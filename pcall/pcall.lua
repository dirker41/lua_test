
function raise_error(num)

    if num~=0 then
        error("err_msg")
    end

    return 3
end

function foo(a, b)

    return a/b
end

local a, b

a=3
b=2

print(foo(a, b))
print( pcall(foo, a, b))

b=0

print(foo(a, b))
print( pcall(foo, a, b))


print("call raise_error")
print(pcall(raise_error, 0))
print(pcall(raise_error, 1))
print(raise_error(0))
print(raise_error(1))