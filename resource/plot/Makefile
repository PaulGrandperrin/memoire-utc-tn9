all: iozone-2_6_32-debian-xen-withcache-withbarrier_out_reads.eps \
	iozone-2_6_32-debian-xen-withcache-withoutbarrier_out_reads.eps \
	iozone-2_6_32-debian-xen-withoutcache-withoutbarrier_out_reads.eps \
	iozone-3_1-linus-withcache-withbarrier_out_reads.eps \
	iozone-3_1-linus-withcache-withoutbarrier_out_reads.eps \
	iozone-3_1-linus-withoutcache-withoutbarrier_out_reads.eps \
	iozone-3_2-linus-withcache-withbarrier_out_reads.eps \
	iozone-3_2-linus-withcache-withoutbarrier_out_reads.eps \
	iozone-3_2-linus-withoutcache-withoutbarrier_out_reads.eps

%_reads.eps:
	./gen-plot.rb $*

clean:
	rm -f *_reads *_writes *.eps *.pdf
