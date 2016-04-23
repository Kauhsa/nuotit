all: $(patsubst %.ily,%.pdf,$(wildcard *.ily))

%.pdf: %.ily
	lilypond $^

clean:
	rm $(wildcard *.pdf)

watch:
	fswatch -o *.ily | xargs -n1 -I{} make all