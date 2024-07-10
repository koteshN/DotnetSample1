FROM ubuntu:22.04
#FROM --platform=linux/arm64 arm64v8/debian:11-slim  AS deps
#RUN ls /
ENV DOTNET_VERSION=8.0
WORKDIR /home/ubuntu/Dotnet-Sample
#CMD ["bash"]
RUN apt-get update && apt-get install -y dotnet-sdk-8.0
RUN dotnet restore
RUN dotnet build
RUN dotnet run
CMD ["bash"]
