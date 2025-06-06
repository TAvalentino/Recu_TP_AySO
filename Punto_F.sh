mkdir -p ~/Punto_F
IP=$(curl -s ifconfig.me)
CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -n 1 | cut -d ":" -f 2 | sed 's/^[ \t]*//')
CPU_FREQ=$(grep "cpu MHz" /proc/cpuinfo | head -n 1 | cut -d ":" -f 2 | sed 's/^[ \t]*//')
echo "Mi ip publica es: $IP" > ~/Punto_F/Flitro_Avanzado.txt
echo "CPU Modelo: $CPU_MODEL Frecuencia: ${CPU_FREQ}Hz" >> ~/Punto_F/Flitro_Avanzado.txt
echo "Archivo creado en ~/Punto_F/Flitro_Avanzado.txt"
