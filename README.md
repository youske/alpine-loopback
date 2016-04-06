dockerfile alpine linux with loopback
=====================================

# build & run

    docker --file Dockerfile -t "<image tag name>" .

    docker run -it -p 4440:4440 --rm <image tag name>

# setup data containe
    docker pull busybox:latest
    docker run -it -v /loopback/apiprojects --name loopback_dataStore busybox /bin/sh

# plugins



# using
1. アプリケーションを作る
　　$> slc loopback
2. 諸設定を行う
    $> cd <application name>
    $> slc lookback:model
3. アプリを起動する
    $> node .



# arc の起動の仕方

    $> HOST=0.0.0.0 PORT=3000 slc arc
