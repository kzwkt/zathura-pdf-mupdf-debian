# zathura-pdf-mupdf-debian
mupdf plugin for zathura on debian stable


```

https://github.com/pwmt/zathura-pdf-mupdf/tags

| Plugin Ver | Zathura          | MuPDF            | Meson            | GLib | Cairo | GTK+ |
|------------|------------------|------------------|------------------|------|-------|------|
| 0.4.3      | (>= 0.2.0)       | (>= 1.24.0)      | (>= 0.61)        |      |       |      |
| 0.4.2      | (>= 0.2.0)       | (>= 1.24.0)      | (>= 0.61)        |      |       |      |
| 0.4.1      | (>= 0.4.7)       | (>= 1.16.0)      | (>= 0.61)        |      |       |      |

https://tracker.debian.org/pkg/zathura
https://tracker.debian.org/pkg/mupdf
https://tracker.debian.org/pkg/girara
https://tracker.debian.org/pkg/meson

| Package   | Stable           | Testing          | Unstable         |
|-----------|------------------|------------------|------------------|
| Zathura   | 0.5.2-1          | 0.5.8-1          | 0.5.10-1         |
| MuPDF     | 1.21.1+ds2-1     | 1.24.10+ds1-1    | 1.25.1+ds1-5     |
| Girara    | 0.4.0-1          | 0.4.4-1          | 0.4.5-1          |
| Meson     | 1.0.1-5          | 1.6.0-1          | 1.6.0-1          |



we can go with zathura-pdf-mupdf 0.4.1 due to mupdf version dep

we could build newer version with new mupdf-third but it could have new dependecies 

https://github.com/pwmt/zathura-pdf-mupdf/archive/refs/tags/0.4.1.tar.gz



https://github.com/pwmt/zathura-pdf-mupdf/tags

https://github.com/pwmt/zathura-pdf-mupdf/tree/0.4.4 etc


```


# use it 
```
sudo  apt install libjbig2dec0 libgumbo1
https://github.com/kzwkt/zathura-pdf-mupdf-debian/releases
mkdir -p ~/.local/lib/zathura
mv ~/Downloads/libpdf-mupdf.so ~/.local/lib/zathura

cat reader
zathura -p ~/.local/lib/zathura/ "$@"



copy it to zathura plugin dir  /usr/lib/x86_64-linux-gnu/zathura/

sudo install -m 755 -o root -g root  libpdf-mupdf.so /usr/lib/x86_64-linux-gnu/zathura/
zathura
error: Could not load plugin '/usr/lib/x86_64-linux-gnu/zathura/libpdf-mupdf.so' (/usr/lib/x86_64-linux-gnu/zathura/libpdf-mupdf.so: cannot open shared object file: Permission denied).
zatura 
error: plugin: filetype already registered: application/pdf
need to remove /usr/lib/x86_64-linux-gnu/zathura/libpdf-poppler.so to avoid conflict 
```

