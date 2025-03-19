# zathura-pdf-mupdf-debian
mupdf plugin for zathura on debian stable


```
debian Stable 
Mupdf 1.21.1+ds2-1 	
Zthura 0.5.2-1 
Girara 0.4.0-1 
Meosn 1.0.1-5

we can go with zathura-pdf-mupdf 0.4.1 due to mupdf version dep

we could build newer version with new mupdf-third but it could have new dependecies 

https://github.com/pwmt/zathura-pdf-mupdf/archive/refs/tags/0.4.1.tar.gz



https://github.com/pwmt/zathura-pdf-mupdf/tags

https://github.com/pwmt/zathura-pdf-mupdf/tree/0.4.4 etc
```

```
version 
zathura (>= 0.2.0)
girara
mupdf (>= 1.24.0)
meson (>= 0.61)


Version 0.4.3
zathura (>= 0.2.0)
girara
mupdf (>= 1.24.0)
meson (>= 0.61) for building
GLib
Cairo
GTK+

Version 0.4.2
zathura (>= 0.2.0)
girara
mupdf (>= 1.24.0)
meson (>= 0.61) for building
GLib
Cairo
GTK+

Version 0.4.1       
zathura (>= 0.4.7)
girara (>= 0.3.6)
mupdf (>= 1.16.0)
meson (>= 0.61) for building
GLib
Cairo
GTK+


https://salsa.debian.org/sramacher/zathura
Stable 
0.4.9-1

https://tracker.debian.org/pkg/zathura
	o-o-stable: 	 	 	0.4.3-1 	
	oldstable: 	 	 	0.4.7-1 	
	stable: 	 	 	0.5.2-1 	
	testing: 	 	 	0.5.8-1	
	unstable: 	 	 	0.5.10-1

https://tracker.debian.org/pkg/mupdf
    o-o-stable: 1.14.0+ds1-4+deb10u3
    o-o-sec: 1.14.0+ds1-4+deb10u2
    oldstable: 1.17.0+ds1-2
    old-sec: 1.17.0+ds1-1.3~deb11u1
    stable: 1.21.1+ds2-1
    testing: 1.24.10+ds1-1
    unstable: 1.25.1+ds1-5



https://tracker.debian.org/pkg/girara
	o-o-stable: 0.3.2-1
	oldstable: 0.3.5-1
	stable: 0.4.0-1
	testing: 0.4.4-1
	unstable: 0.4.5-1

https://tracker.debian.org/pkg/meson
	o-o-stable: 0.49.2-1
	oldstable: 0.56.2-1
	old-bpo: 1.0.0-1.1~bpo11+1
	stable: 1.0.1-5
	stable-bpo: 1.5.1-1~bpo12+1
	testing: 1.6.0-1
	unstable: 1.6.0-1


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

