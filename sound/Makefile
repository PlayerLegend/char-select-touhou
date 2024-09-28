mari_burned.ogg: sfx/mari_burned.wav Makefile
	ffmpeg -y -i $< -filter:a "volume=0.8" $@

mari_burned2.ogg: sfx/mari_burned2.wav Makefile
	ffmpeg -y -i $< -filter:a "volume=0.9" $@

mari_1hp.ogg: sfx/mari_1hp.wav Makefile
	ffmpeg -y -i $< -filter:a "volume=0.8" $@

%.ogg: sfx/%.wav
	ffmpeg -y -i $< $@
