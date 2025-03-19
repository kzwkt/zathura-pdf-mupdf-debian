echo "deb-src https://deb.debian.org/debian stable main" |  tee -a /etc/apt/sources.list
apt update
apt build-dep zathura mupdf -y
apt install wget libmupdf-dev zathura-dev gcc meson ca-certificates  -y
wget https://github.com/pwmt/zathura-pdf-mupdf/archive/refs/tags/0.4.1.tar.gz
tar -xzf 0.4.1.tar.gz
cd zathura-pdf-mupdf-0.4.1/
apt-get source mupdf
sed -i -e '/^[[:space:]]*tesseract/s/^[[:space:]]*\(tesseract\)/# \1/' -e '/^[[:space:]]*leptonica/s/^[[:space:]]*\(leptonica\)/# \1/' meson.build
meson setup build
cd build
ninja
