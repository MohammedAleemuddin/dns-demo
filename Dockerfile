FROM public.ecr.aws/amazonlinux/amazonlinux:2

# Install Python 3.8 and pip
RUN yum clean all && \
    yum install -y amazon-linux-extras && \
    amazon-linux-extras enable python3.8 && \
    yum install -y python3.8 python3-pip

# Set working directory
WORKDIR /app

# Copy application files
COPY hello.py .
COPY requirements.txt .

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt && \
    yum clean all && \
    rm -rf /root/.cache /var/cache/yum

# Expose port 80
EXPOSE 80

# Run with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "--workers", "4", "hello:app"]
