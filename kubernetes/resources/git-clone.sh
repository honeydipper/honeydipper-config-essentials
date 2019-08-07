set -eo pipefail

mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo >~/.ssh/config <<EOF
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile    /dev/null
  IdentityFile          /root/id_rsa
EOF

git clone --single-branch ${BRANCH:+--branch} $BRANCH $REPO $NAME
