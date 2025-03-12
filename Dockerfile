
FROM shadowsocks/shadowsocks-libev

ENV METHOD=aes-256-gcm
ENV PASSWORD=your_password
ENV PORT=8388

EXPOSE $PORT

CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD
