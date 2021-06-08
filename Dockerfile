FROM jbake/jbake
ADD src /src
ENTRYPOINT ["jbake src output"]