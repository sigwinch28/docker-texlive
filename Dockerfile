FROM library/debian

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      latexmk \
      texlive-base \
      texlive-bibtex-extra \
      texlive-fonts-recommended \
      texlive-latex-extra \
      texlive-metapost && \
    apt-get purge -f -y '^texlive.*-doc$'

VOLUME /data


