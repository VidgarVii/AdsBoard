threads 1,5
workers 2

bind AdsBoard.root.join('tmp','pid', 'puma.sock')
pidfile AdsBoard.root.join('tmp','pid', 'puma.pid')
