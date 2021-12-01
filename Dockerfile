from ghcr.io/foundeo/cfml-ci-tools/cfml-ci-tools@sha256:1382ea9a080eaa66d707100ab6067603f2fd5db82566696d2433cff726e61c8b

COPY entrypoint.sh /app

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]