
all: SolarLegends.pcz


clean:
	rm -rf SolarLegends.pcz SolarLegends.zip build


SolarLegends.pcz: Makefile install.lst Data GameMode
	rm -rf buildmkdir build
	mkdir -p build/data/solar_legends
	mkdir -p build/system/gameModes
	cp install.lst build
	cp -r Data/* build/data/solar_legends
	cp -r GameMode build/system/gameModes/Solar_Legends
	cd build; zip -r ../SolarLegends.zip *
	mv SolarLegends.zip SolarLegends.pcz
