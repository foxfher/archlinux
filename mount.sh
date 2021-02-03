 echo "Creando carpeta share"
 mkdir share
 echo "montando unidad"
 mount -t 9p -o trans=virtio,version=9p2000.L /share share 
