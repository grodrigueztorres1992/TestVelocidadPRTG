import speedtest

s = speedtest.Speedtest()

s.get_servers()
s.get_best_server()

ping = s.results.ping
download = s.download()
upload = s.upload()

downspeed = round((round(download) / 1048576), 2)
upspeed = round((round(upload) / 1048576), 2)

print("{}".format(download))
#print("Subida {} Mb/s".format(upspeed))
#print("Ping {} ms".format(ping))
