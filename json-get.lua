if redis.call("EXISTS", KEYS[1]) == 1 then
  local payload = redis.call("GET", KEYS[1])
  return cjson.decode(payload)[ARGV[1]]
else
  return nil
end
