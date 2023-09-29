FROM chatwoot/chatwoot:v3.1.1-ce

RUN apk add --no-cache multirun postgresql-client

CMD pg_isready -h $PGHOST -p $PGPORT && \
    bundle exec rails db:chatwoot_prepare && \
    bundle exec rails db:migrate && \
    multirun \
    "bundle exec sidekiq -C config/sidekiq.yml" \
    "bundle exec rails s -b 0.0.0.0 -p $PORT"