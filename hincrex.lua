if redis.call("HEXISTS", KEYS[1], ARGV[1]) == 1 then
  return redis.call("HINCR", KEYS[1], ARGV[1])
else
  return nil
end
