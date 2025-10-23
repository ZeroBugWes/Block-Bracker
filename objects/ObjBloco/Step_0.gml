if global.isFim{
	exit
}

if ! global.blocoAlturaCerta{
	y ++
	
	if y >= 384{
		global.blocoAlturaCerta = true
	}
}