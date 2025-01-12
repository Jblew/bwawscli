FROM debian:9-slim AS bw
WORKDIR /w
RUN apt-get update && apt-get install -y unzip
ADD https://github.com/bitwarden/clients/releases/download/cli-v2022.9.0/bw-linux-2022.9.0.zip /w
RUN unzip /w/bw-linux-*.zip
RUN chmod +x bw

FROM amazon/aws-cli AS aws
RUN apt-get update && apt-get install -y unzip git

RUN mkdir /sam
ADD https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip /sam/aws-sam-cli-linux-x86_64.zip
RUN ls /sam

WORKDIR /w
COPY --from=bw /w/bw /bin/bw
RUN bw --version
COPY ./entrypoint.sh /entrypoint.sh
ENV BW_SECRET_NAME="aws"
ENV AWS_DEFAULT_REGION="eu-central-1"
ENTRYPOINT ["/entrypoint.sh"]
CMD bash
