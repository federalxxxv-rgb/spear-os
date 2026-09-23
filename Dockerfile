# Start with the tiny Alpine base image
FROM alpine:latest

# Change the name to Spear OS inside the system settings
RUN echo 'NAME="Spear OS"' > /etc/os-release && \
    echo 'PRETTY_NAME="Spear OS"' >> /etc/os-release && \
    echo 'ID=spearos' >> /etc/os-release && \
    echo 'ID_LIKE=alpine' >> /etc/os-release && \
    echo 'VERSION_ID=1.0.0' >> /etc/os-release

# Change the text you see when logging into the terminal
RUN echo "Welcome to Spear OS (Built from Alpine base) \r (\l)" > /etc/issue && \
    echo "Welcome to Spear OS (Built from Alpine base) \r (\l)" > /etc/issue.net

# Set the computer name to spearos
RUN echo "spearos" > /etc/hostname

# Start the command line shell when booted
CMD ["/bin/sh"]

