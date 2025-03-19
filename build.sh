apt update 
apt install -y ca-certificates  
echo "deb-src https://deb.debian.org/debian stable main" |  tee -a /etc/apt/sources.list
apt update
apt build-dep zathura mupdf -y
apt install wget libmupdf-dev zathura-dev gcc meson ca-certificates  -y
version=0.4.1
echo $version > version 
wget https://github.com/pwmt/zathura-pdf-mupdf/archive/refs/tags/$version.tar.gz
tar -xzf $version.tar.gz
cd zathura-pdf-mupdf-$version/
apt-get source mupdf
sed -i -e '/^[[:space:]]*tesseract/s/^[[:space:]]*\(tesseract\)/# \1/' -e '/^[[:space:]]*leptonica/s/^[[:space:]]*\(leptonica\)/# \1/' meson.build
meson setup build
cd build
ninja
