FROM python:3.12-slim

ARG NERD_FONTS_VERSION=v3.3.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      fontforge \
      python3-fontforge \
      curl \
      ca-certificates \
      unzip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /nerd-fonts

# Download the font-patcher and glyph source files
RUN curl -fsSL "https://github.com/ryanoasis/nerd-fonts/releases/download/${NERD_FONTS_VERSION}/FontPatcher.zip" -o FontPatcher.zip && \
    unzip FontPatcher.zip && \
    rm FontPatcher.zip

WORKDIR /fonts

ENTRYPOINT ["fontforge", "-script", "/nerd-fonts/font-patcher"]
CMD ["--help"]
