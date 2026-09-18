FROM condaforge/miniforge3:latest

RUN conda create -y -n snakemake \
    -c conda-forge \
    -c bioconda \
    -c nodefaults \
    python=3.12 \
    snakemake=9.26.1 \
    snakedeploy=0.16.2 \
    pandas \
    "conda>=24.7.1" \
    && conda clean -afy

ENV PATH=/opt/conda/envs/snakemake/bin:$PATH

WORKDIR /workspace

CMD ["snakemake", "--version"]
