


spi_tft: spi_tft.o LCD.o mt76x8_gpio.o spi.o
	$(CC) -o spi_tft spi_tft.o LCD.o mt76x8_gpio.o spi.o

spi_tft.o: spi_tft.cpp spi.h LCD.h font.h sys.h
	$(CC)  -c spi_tft.cpp

LCD.o: LCD.cpp LCD.h font.h
	$(CC)  -c LCD.cpp

spi.o: spi.cpp spi.h
	$(CC)  -c spi.cpp

mt76x8_gpio.o: mt76x8_gpio.cpp sys.h
	$(CC) -c mt76x8_gpio.cpp

clean: 
	rm *.o 
