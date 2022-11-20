FROM scratch

LABEL org.opencontainers.image.title="n8n - Workflow automation tool" \
    org.opencontainers.image.description="n8n is an extendable workflow automation tool. With a fair-code distribution model, n8n will always have visible source code, be available to self-host, and allow you to add your own custom functions, logic and apps. n8n's node-based approach makes it highly versatile, enabling you to connect anything to everything." \
    org.opencontainers.image.vendor="Ronak Patil" \
    com.docker.desktop.extension.api.version=">= 1.0" \
    com.docker.desktop.extension.icon="https://d33wubrfki0l68.cloudfront.net/b8db213a4d85ebec7b82272cacb727a05a9a1475/96e9f/_images/n8n-docs-icon.svg" \
    com.docker.extension.screenshots='' \
    com.docker.extension.detailed-description="<h1>Description</h1><p>This is a sample extension that displays the content of an <code>index.html</code> page inside Docker Desktop.</p>" \
    com.docker.extension.publisher-url="https://www.n8n.io" \
    com.docker.extension.additional-urls='[{"title":"SDK Documentation","url":"https://docs.docker.com/desktop/extensions-sdk"}]' \
    com.docker.extension.changelog="<ul><li>Added metadata to provide more information about the extension.</li></ul>"

COPY ui ./ui
COPY icon.svg .
COPY docker-compose.yaml .
COPY metadata.json .
