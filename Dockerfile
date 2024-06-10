FROM public.ecr.aws/amazonlinux/amazonlinux:2

ENV PATH="$PATH:/root/.local/bin"

# Set working directory to /home
WORKDIR /home


RUN yum clean all && yum install -y amazon-linux-extras && amazon-linux-extras install python3.8

RUN curl -O https://bootstrap.pypa.io/get-pip.py && python3.8 get-pip.py

COPY hello.py .

RUN pip3 install --no-cache-dir flask
RUN rm -rf /root/.cache && rm -rf /var/cache/yum

EXPOSE 80

CMD ["python3.8", "hello.py"]
