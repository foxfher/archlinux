if [ $(df | grep -i "cowspace" ]; then
 if [ $(df | grep -i "cowspace" | awk '{print $2}')!="4.0G" ]; then
  echo "Aumentando Espacio cowspace"
  mount -o remount,size=4G /run/archiso/cowspace
 fi
fi
 echo "Creando carpeta share"
 mkdir share
 echo "montando unidad"
 mount -t 9p -o trans=virtio,version=9p2000.L /share share 
