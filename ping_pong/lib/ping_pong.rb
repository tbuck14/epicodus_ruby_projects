def ping_pong(number)
    p_p = []
    for n in (1..number)
        p_p[n-1] = n
        p_p[n-1] = 'ping' if n%3 == 0 
        p_p[n-1] = 'pong' if n%5 == 0 
        p_p[n-1] = 'ping-pong' if (n%3 == 0 && n%5 == 0)
    end
    p_p
end