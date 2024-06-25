# custom-rscripts
Repository for custom R scripts used for RNA-seq analysis and data exploration.

### homer-motif-dot-plot.R
This script uses the packages dplyr, ggplot2, gridExtra, and grid to analyze homer's findMotifsGenome.pl output.

Groups (2) of .bed files (n=3) from different conditions (A and B) were combined into singular .bed files and used as input.

Homer execution command

findMotifsGenome.pl "combind_B.bed" "human_genome_GRCh38.dna.primary_assembly.fa" "/output_directory" -bg "combined_A.bed" -p 16

Custom r-script reads in Homer's findMotifsGenome output file and formats a plotting table based on the Motif_Name, LogPvalue, Delta_Percentage, and Concensus columns.

A dot plot is generated that displays the Motif name and the gene the motif is found in on the y-axis, a dot is plotted where the -log(P-value) is reflected by color and the Percentage Difference is reflected by dot size (with legends for both). Lastly, the motif is displayed to the right of the dot. 

See the homer-motif-processing.R script for analyzing the output. 

Custom conda environment contains the following:

# Name                    Version                   Build  Channel
_libgcc_mutex             0.1                 conda_forge    conda-forge
_openmp_mutex             4.5                       2_gnu    conda-forge
alsa-lib                  1.2.8                h166bdaf_0    conda-forge
attr                      2.5.1                h166bdaf_1    conda-forge
bedtools                  2.31.1               hf5e1c6e_1    bioconda
biopython                 1.81                     pypi_0    pypi
blas                      1.0                    openblas    anaconda
bottleneck                1.3.5           py311hbed6279_0    anaconda
brotli                    1.0.9                h166bdaf_8    conda-forge
brotli-bin                1.0.9                h166bdaf_8    conda-forge
brotlipy                  0.7.0           py311hd4cff14_1005    conda-forge
bx-python                 0.11.0                   pypi_0    pypi
bzip2                     1.0.8                h7f98852_4    conda-forge
c-ares                    1.28.1               hd590300_0    conda-forge
ca-certificates           2024.2.2             hbcca054_0    conda-forge
cairo                     1.16.0            h35add3b_1015    conda-forge
certifi                   2024.2.2           pyhd8ed1ab_0    conda-forge
cffi                      1.15.1          py311h409f033_3    conda-forge
charset-normalizer        3.1.0              pyhd8ed1ab_0    conda-forge
contourpy                 1.0.7           py311ha3edf6b_0    conda-forge
cryptography              40.0.1          py311h9b4c7bb_0    conda-forge
cycler                    0.11.0             pyhd8ed1ab_0    conda-forge
cython                    3.0.10                   pypi_0    pypi
dbus                      1.13.6               h5008d03_3    conda-forge
et_xmlfile                1.1.0              pyhd8ed1ab_0    conda-forge
expat                     2.5.0                hcb278e6_1    conda-forge
fastp                     0.23.4               hadf994f_2    bioconda
font-ttf-dejavu-sans-mono 2.37                 hab24e00_0    conda-forge
font-ttf-inconsolata      3.000                h77eed37_0    conda-forge
font-ttf-source-code-pro  2.038                h77eed37_0    conda-forge
font-ttf-ubuntu           0.83                 hab24e00_0    conda-forge
fontconfig                2.14.2               h14ed4e7_0    conda-forge
fonts-conda-ecosystem     1                             0    conda-forge
fonts-conda-forge         1                             0    conda-forge
fonttools                 4.39.3          py311h2582759_0    conda-forge
freetype                  2.12.1               hca18f0e_1    conda-forge
gettext                   0.21.1               h27087fc_0    conda-forge
glib                      2.74.1               h6239696_1    conda-forge
glib-tools                2.74.1               h6239696_1    conda-forge
graphite2                 1.3.13            h58526e2_1001    conda-forge
gst-plugins-base          1.22.0               h4243ec0_2    conda-forge
gstreamer                 1.22.0               h25f0c4b_2    conda-forge
gtf2csv                   0.2                      pypi_0    pypi
harfbuzz                  6.0.0                h3ff4399_1    conda-forge
hdf5                      1.12.2          nompi_h4df4325_101    conda-forge
icu                       72.1                 hcb278e6_0    conda-forge
idna                      3.4                pyhd8ed1ab_0    conda-forge
isa-l                     2.30.0               ha770c72_4    conda-forge
joblib                    1.2.0              pyhd8ed1ab_0    conda-forge
kallisto                  0.50.1               hc877fd6_1    bioconda
keyutils                  1.6.1                h166bdaf_0    conda-forge
kiwisolver                1.4.4           py311h4dd048b_1    conda-forge
krb5                      1.20.1               h81ceb04_0    conda-forge
lame                      3.100             h166bdaf_1003    conda-forge
lcms2                     2.15                 haa2dc70_1    conda-forge
ld_impl_linux-64          2.40                 h41732ed_0    conda-forge
lerc                      4.0.0                h27087fc_0    conda-forge
libaec                    1.1.3                h59595ed_0    conda-forge
libblas                   3.9.0           16_linux64_openblas    conda-forge
libbrotlicommon           1.0.9                h166bdaf_8    conda-forge
libbrotlidec              1.0.9                h166bdaf_8    conda-forge
libbrotlienc              1.0.9                h166bdaf_8    conda-forge
libcap                    2.67                 he9d0100_0    conda-forge
libcblas                  3.9.0           16_linux64_openblas    conda-forge
libclang                  16.0.1          default_h62803fd_0    conda-forge
libclang13                16.0.1          default_h9b593c0_0    conda-forge
libcups                   2.3.3                h36d4200_3    conda-forge
libcurl                   8.1.2                h409715c_0    conda-forge
libdeflate                1.18                 h0b41bf4_0    conda-forge
libedit                   3.1.20191231         he28a2e2_2    conda-forge
libev                     4.33                 hd590300_2    conda-forge
libevent                  2.1.10               h28343ad_4    conda-forge
libexpat                  2.5.0                hcb278e6_1    conda-forge
libffi                    3.4.2                h7f98852_5    conda-forge
libflac                   1.4.2                h27087fc_0    conda-forge
libgcc-ng                 12.2.0              h65d4601_19    conda-forge
libgcrypt                 1.10.1               h166bdaf_0    conda-forge
libgfortran-ng            12.2.0              h69a702a_19    conda-forge
libgfortran5              12.2.0              h337968e_19    conda-forge
libglib                   2.74.1               h606061b_1    conda-forge
libgomp                   12.2.0              h65d4601_19    conda-forge
libgpg-error              1.46                 h620e276_0    conda-forge
libiconv                  1.17                 h166bdaf_0    conda-forge
libjpeg-turbo             2.1.5.1              h0b41bf4_0    conda-forge
liblapack                 3.9.0           16_linux64_openblas    conda-forge
libllvm16                 16.0.1               hadd5161_0    conda-forge
libnghttp2                1.58.0               h47da74e_0    conda-forge
libnsl                    2.0.0                h7f98852_0    conda-forge
libogg                    1.3.4                h7f98852_1    conda-forge
libopenblas               0.3.21          pthreads_h78a6416_3    conda-forge
libopus                   1.3.1                h7f98852_1    conda-forge
libpng                    1.6.39               h753d276_0    conda-forge
libpq                     15.2                 hb675445_0    conda-forge
libsndfile                1.2.0                hb75c966_0    conda-forge
libsqlite                 3.40.0               h753d276_0    conda-forge
libssh2                   1.11.0               h0841786_0    conda-forge
libstdcxx-ng              12.2.0              h46fd767_19    conda-forge
libsystemd0               253                  h8c4010b_1    conda-forge
libtiff                   4.5.0                ha587672_6    conda-forge
libuuid                   2.38.1               h0b41bf4_0    conda-forge
libvorbis                 1.3.7                h9c3ff4c_0    conda-forge
libwebp-base              1.3.0                h0b41bf4_0    conda-forge
libxcb                    1.13              h7f98852_1004    conda-forge
libxkbcommon              1.5.0                h79f4944_1    conda-forge
libxml2                   2.10.4               hfdac1af_0    conda-forge
libzlib                   1.2.13               h166bdaf_4    conda-forge
logomaker                 0.8                      pypi_0    pypi
lz4-c                     1.9.4                hcb278e6_0    conda-forge
matplotlib                3.7.1           py311h38be061_0    conda-forge
matplotlib-base           3.7.1           py311h8597a09_0    conda-forge
mpg123                    1.31.3               hcb278e6_0    conda-forge
munkres                   1.1.4              pyh9f0ad1d_0    conda-forge
mysql-common              8.0.32               ha901b37_1    conda-forge
mysql-libs                8.0.32               hd7da12d_1    conda-forge
ncurses                   6.3                  h27087fc_1    conda-forge
nspr                      4.35                 h27087fc_0    conda-forge
nss                       3.89                 he45b914_0    conda-forge
numexpr                   2.8.7           py311h812550d_0    anaconda
numpy                     1.25.0                   pypi_0    pypi
openjpeg                  2.5.0                hfec8fc6_2    conda-forge
openpyxl                  3.1.2           py311h459d7ec_1    conda-forge
openssl                   3.1.5                hd590300_0    conda-forge
packaging                 23.0               pyhd8ed1ab_0    conda-forge
pandas                    2.0.3                    pypi_0    pypi
patsy                     0.5.3              pyhd8ed1ab_0    conda-forge
pcre2                     10.40                hc3806b6_0    conda-forge
pdfpages                  0.1.0                    pypi_0    pypi
pillow                    9.5.0           py311h573f0d3_0    conda-forge
pip                       23.0.1             pyhd8ed1ab_0    conda-forge
pixman                    0.40.0               h36c2ea0_0    conda-forge
platformdirs              3.2.0              pyhd8ed1ab_0    conda-forge
ply                       3.11                       py_1    conda-forge
pooch                     1.7.0              pyha770c72_3    conda-forge
pthread-stubs             0.4               h36c2ea0_1001    conda-forge
pulseaudio-client         16.1                 h5195f5e_3    conda-forge
pybigwig                  0.3.22                   pypi_0    pypi
pycparser                 2.21               pyhd8ed1ab_0    conda-forge
pyopenssl                 23.1.1             pyhd8ed1ab_0    conda-forge
pyparsing                 3.0.9              pyhd8ed1ab_0    conda-forge
pypdf2                    3.0.1                    pypi_0    pypi
pyqt                      5.15.7          py311ha74522f_3    conda-forge
pyqt5-sip                 12.11.0         py311hcafe171_3    conda-forge
pysam                     0.22.1                   pypi_0    pypi
pysocks                   1.7.1              pyha2e5f31_6    conda-forge
python                    3.11.3          h2755cc3_0_cpython    conda-forge
python-dateutil           2.8.2              pyhd8ed1ab_0    conda-forge
python-tzdata             2023.3             pyhd8ed1ab_0    conda-forge
python_abi                3.11                    3_cp311    conda-forge
pytz                      2023.3             pyhd8ed1ab_0    conda-forge
qt-main                   5.15.8               h5c52f38_9    conda-forge
readline                  8.2                  h8228510_1    conda-forge
requests                  2.28.2             pyhd8ed1ab_1    conda-forge
rseqc                     5.0.3                    pypi_0    pypi
scikit-learn              1.2.2           py311h103fc68_1    conda-forge
scipy                     1.10.1          py311h8e6699e_0    conda-forge
seaborn                   0.12.2               hd8ed1ab_0    conda-forge
seaborn-base              0.12.2             pyhd8ed1ab_0    conda-forge
setuptools                67.6.1             pyhd8ed1ab_0    conda-forge
sip                       6.7.8           py311hcafe171_0    conda-forge
six                       1.16.0             pyh6c4a22f_0    conda-forge
statannot                 0.2.3                    pypi_0    pypi
statsmodels               0.13.5          py311h4c7f6c3_2    conda-forge
threadpoolctl             2.2.0              pyh0d69192_0    anaconda
tk                        8.6.12               h27826a3_0    conda-forge
toml                      0.10.2             pyhd8ed1ab_0    conda-forge
tomli                     2.0.1              pyhd8ed1ab_0    conda-forge
tornado                   6.2             py311hd4cff14_1    conda-forge
typing-extensions         4.5.0                hd8ed1ab_0    conda-forge
typing_extensions         4.5.0              pyha770c72_0    conda-forge
tzdata                    2023c                h71feb2d_0    conda-forge
urllib3                   1.26.15            pyhd8ed1ab_0    conda-forge
wheel                     0.40.0             pyhd8ed1ab_0    conda-forge
xcb-util                  0.4.0                h166bdaf_0    conda-forge
xcb-util-image            0.4.0                h166bdaf_0    conda-forge
xcb-util-keysyms          0.4.0                h166bdaf_0    conda-forge
xcb-util-renderutil       0.3.9                h166bdaf_0    conda-forge
xcb-util-wm               0.4.1                h166bdaf_0    conda-forge
xkeyboard-config          2.38                 h0b41bf4_0    conda-forge
xorg-kbproto              1.0.7             h7f98852_1002    conda-forge
xorg-libice               1.0.10               h7f98852_0    conda-forge
xorg-libsm                1.2.3             hd9c2040_1000    conda-forge
xorg-libx11               1.8.4                h0b41bf4_0    conda-forge
xorg-libxau               1.0.9                h7f98852_0    conda-forge
xorg-libxdmcp             1.1.3                h7f98852_0    conda-forge
xorg-libxext              1.3.4                h0b41bf4_2    conda-forge
xorg-libxrender           0.9.10            h7f98852_1003    conda-forge
xorg-renderproto          0.11.1            h7f98852_1002    conda-forge
xorg-xextproto            7.3.0             h0b41bf4_1003    conda-forge
xorg-xf86vidmodeproto     2.3.1             h7f98852_1002    conda-forge
xorg-xproto               7.0.31            h7f98852_1007    conda-forge
xz                        5.2.6                h166bdaf_0    conda-forge
zlib                      1.2.13               h166bdaf_4    conda-forge
zstd                      1.5.2                h3eb15da_6    conda-forge
