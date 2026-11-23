
# IA 462 midterm app


FROM python:3.11-slim@sha256:07d4824036af339fa1b6ef769cc99d9c10a141769538b52b3b597c84f7a7b535 AS builder

WORKDIR /build


COPY requirements.lock ./requirements.txt

RUN pip install --no-cache-dir --require-hashes \
    --prefix=/install -r requirements.txt



FROM python:3.11-slim@sha256:07d4824036af339fa1b6ef769cc99d9c10a141769538b52b3b597c84f7a7b535

LABEL maintainer="astrizic@emich.edu"
LABEL description="IA 462 Midterm"




RUN groupadd --system appgroup && \
    useradd --system --gid appgroup \
    --home /app --shell /usr/sbin/nologin appuser

WORKDIR /app

COPY --from=builder /install /usr/local

COPY --chown=appuser:appgroup app/ ./app/

USER appuser

EXPOSE 5000

CMD ["python3", "app/app.py"]
