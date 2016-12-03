FROM joakimbeng/gcloud:v136

RUN \
    apk add --no-cache --update libintl nodejs && \
    apk add --virtual build_deps gettext &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps

