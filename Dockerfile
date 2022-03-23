FROM nginx:1.13.12

# nginx設定ファイルをコピーする
COPY nginx.conf etc/nginx/nginx.conf

# tarファイルをaddすることで自動的に展開される
ADD addtest.tar var

# copyをするとtarのままコピーされる
COPY addtest.tar .

# addでurlを指定するとダウンロードされる
ADD https://composer.github.io/installer.sig .