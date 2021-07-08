#!/bin/bash

clear

echo "[login menu v2.1i]"
echo "masukkan nama anda:"
read nama
echo "last login : $nama"
clear
echo  "hai $nama "
echo  " _______________________________"
echo  "[_____                          ]"
echo  "[]]]]]                          ]"
echo  "[_____                          ]"
echo  "[]]]]]                          ]"
echo  "[_____                          ]"
echo  "[]]]]]                          ]"
echo  "[_____                          ]"
echo  "[]]]]]_________________         ]"
echo  "       Disk Tools v2.1i\________]"
echo  "  "
echo  "  "
echo  "  "
echo "[info]:untuk melakukan pembersihan anda membutuhkan akses root]"
echo "  "
echo "[==[pilih salah satu]==]"
echo "by : ARC_dev"

echo "::::::::::::::::::::::::::::::::::"
echo "[1] bersihkan file chace";         
echo "[2] bersihkan file download [beberapa file berformat .deb mungkin akan dihapus]";
echo "[3] bersihkan file secara otomatis";
echo "[4] cek detail penyimpanan";
echo "[5] cek penyimpanan (dengan addres)"



echo "[H][help menu]   []   [update]"
echo "::::::::::::::::::::::::::::::::::"
read -p "silahkan pilih [1-5]: " pil;
case $pil in

1)
    
    echo "membersihkan file chace..."
    sudo apt-get clean
    clear
    echo "selesai"

;;

2)
    echo "membersihkan file download"
    sudo apt-get autoremove
    clear
    echo "selesai."
;;
3)
    echo "membersihkan secara otomatis..."
    sudo apt-get clean
    sudo apt-get autoremove
    clear
    echo "selesai."

;;
4)
    clear
    echo " __________________________________"
    echo "[__________________________________]"
    echo "[informasi filesystem anda:        ]"
    echo "[__________________________________]"
    df -h
;;
5)
    clear
    echo silahkan masukkan addres penyimpanan anda 
    read disk
    echo " __________________________________"
    echo "[__________________________________]"
    echo "[ukuran file :                     ]"
    echo "[__________________________________]"
    du -h $disk

    echo " __________________________________"
    echo "[__________________________________]"
    echo "[detail penggunaan :               ]"
    echo "___________________________________]"
    du -sh $disk

    echo " __________________________________"
    echo "[__________________________________]"
    echo "[selesai di cek:                   ]"
    echo "[__________________________________]"
    date
    echo "selesai"
;;
H)
clear
    
      echo hai $nama
      echo " "
      echo " "
      echo [02] hidden menu
      echo [t1] cara menggunakan cek penyimpanan address
      echo [ketik bash dsc lalu klik enter]
      echo [jika sudah masukan code yang sudah disediakan di atas]
;;

update)

      echo "updating..."
      clear
      echo "deleting old installation..."
      clear
      cd 
      rm -r disk
      clear
      echo "downloading new file..."
      git clone https://github.com/afri64/disk
      clear
      echo "installing new dsc..."
      cd
      cd disk
      bash dsc

;;


t1)
clear
      echo pertama tama silahkan file exploler bawaan system anda
      echo " "
      echo atau khusus untuk android anda bisa install zarchiver
      echo " "
      echo buka file/dircetory yang mau anda scan
      echo " "
      echo biasanya addres bisa dilihat di layar paling atas
      echo " "
      echo contoh :
      echo " "
      echo android : /storage/emulated/0/
      echo linux : /home/nama pengguna
;;


02)
clear
      echo "selamat anda kena prank:V"
      echo "kamera nya ilang:V lupa letakkin dimana"
      echo "awokawokowkwokwokwowk kena prank:V"
      echo $nama ~kun jangan marah dong:V
;;

*)
    clear
    echo kepencet bang?:V
    exit
;;

esac



