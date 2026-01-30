#!/bin/bash
SSH_USER=${SSH_USER:-root}

# Check if SSH_USER exists, if not create it
if ! id "$SSH_USER" &>/dev/null; then
    useradd -m $SSH_USER
fi

# Enable or disable password authentication based on SSH_PASSWORD_AUTH environment variable
if [ -n "$SSH_PASSWORD" ]; then
    sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    echo "$SSH_USER:$SSH_PASSWORD" | chpasswd
fi

# If a PUBLIC_KEY environment variable is provided, add the key to the SSH_USER
if [ -n "$PUBLIC_KEY" ]; then
    # Determine correct home directory
    HOME_DIR=$(getent passwd "$SSH_USER" | cut -d: -f6)
    mkdir -p $HOME_DIR/.ssh
    echo $PUBLIC_KEY > $HOME_DIR/.ssh/authorized_keys
    chown -R $SSH_USER:$SSH_USER $HOME_DIR/.ssh
    chmod 700 $HOME_DIR/.ssh
    chmod 600 $HOME_DIR/.ssh/authorized_keys
fi
service ssh start

# Start FileBrowser on port 1111 in the background
filebrowser --noauth --port 1111 --root /workspace &

# Start code-server on port 8888 (foreground)
code-server --host 0.0.0.0 --auth none --port 8888 --disable-workspace-trust /workspace