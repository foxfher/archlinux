    if [[ ! -z $(df -h | grep -i "cowspace") ]]; then
        if [ $(df -h | grep -i "cowspace" | awk '{print $2}') != "4.0G" ]; then
            echo "Aumentando Espacio cowspace"
            mount -o remount,size=4G /run/archiso/cowspace
        fi
    fi
 echo "Creando carpeta share"
 mkdir share
 #echo "Instalando opción de portapales en maquina virtual"
# pacman -Sy spice-vdagent --noconfirm
 echo "montando unidad"
 mount -t 9p -o trans=virtio,version=9p2000.L /share share 
