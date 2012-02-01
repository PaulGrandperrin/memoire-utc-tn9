all: iozone-2.6.32-debian-xen-withcache-withbarrier.out.reads.out.png \
	iozone-2.6.32-debian-xen-withcache-withoutbarrier.out.reads.out.png \
	iozone-2.6.32-debian-xen-withoutcache-withoutbarrier.out.reads.out.png \
	iozone-3.1-linus-withcache-withbarrier.out.reads.out.png \
	iozone-3.1-linus-withcache-withoutbarrier.out.reads.out.png \
	iozone-3.1-linus-withoutcache-withoutbarrier.out.reads.out.png \
	iozone-3.2-linus-withcache-withbarrier.out.reads.out.png \
	iozone-3.2-linus-withcache-withoutbarrier.out.reads.out.png \
	iozone-3.2-linus-withoutcache-withoutbarrier.out.reads.out.png

%.reads.out.png:
	./gen-plot.rb $*
	sam2p $*.reads.out.png EPS: $*.reads.out.eps
	sam2p $*.writes.out.png EPS: $*.writes.out.eps

clean:
	rm -f *.reads.out *.writes.out *.reads.out.png *.writes.out.png *.reads.out.eps *.writes.out.eps
