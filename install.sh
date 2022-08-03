conda create --name py27 python=2.7
source activate py27
conda install -c bioconda glimmerhmm
conda install -c bioconda glimmer
conda install -c bioconda hmmer2
conda install -c bioconda hmmer
conda install -c bioconda fasttree
conda install -c bioconda diamond
conda install -c bioconda muscle
conda install -c bioconda prodigal
conda install -c bioconda cd-hit
conda install -c bioconda blast
sudo apt-get install libxml2-dev
sudo apt-get install liblzma-dev
mkdir test
cd test/
wget https://github.com/plantismash/plantismash/archive/refs/tags/1.0.tar.gz
tar -xvzf 1.0.tar.gz
cd plantismash-1.0/
pip install numpy
pip install -r requirements.txt
python download_databases.py
./run_antismash.py -h
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/003/018/455/GCF_003018455.1_ASM301845v1/GCF_003018455.1_ASM301845v1_genomic.fna.gz
gunzip GCF_003018455.1_ASM301845v1_genomic.fna.gz
/plantismash-1.0/run_antismash.py -c 15 GCF_003018455.1_ASM301845v1_genomic.fna
