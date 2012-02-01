#!/usr/bin/env ruby
#Based on a script from Vivien Bernet-Rollande

filename = ARGV[0]

readdata = filename + ".reads.out"
writedata = filename + ".writes.out"

rfd = File.open(readdata, "w")
wfd = File.open(writedata, "w")


oldx = 10000000000000
oldy = 10000000000000

File.open(filename).each_line do |line|
    if line =~ /\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)/ then
        x = $1.to_i
        y = $2.to_i
        w = ($3.to_i + $4.to_i)/(2*1024)
        r = ($5.to_i + $6.to_i)/(2*1024)

        # break line if x or y decreases
        if x < oldx or y < oldy then
            wfd.puts
            rfd.puts
        end

        oldx = x
        oldy = y 

        wfd.puts    "#{x}\t#{y}\t#{w}"
        rfd.puts    "#{x}\t#{y}\t#{r}"
    end
end
rfd.close
wfd.close

def plot(infile, outfile)
    IO.popen("gnuplot", "w") do |gnuplot|
        str = <<-EOF
            set title "Iozone performance"
            set terminal png 20 size 800, 640
            set palette defined (0 "blue",1400 "green", 2100 "yellow", 3000 "red", 3600 "black")
            set grid lt 0.5 lw 0.5 lc rgb "black"
            set surface
            set parametric
            set nokey
            set xtics
            set ytics
            set logscale x 2
            set logscale y 2
            set zrange [0:3600]
            set cbrange [0:3600]
            set xlabel "Taille du fichier en KB"
            set ylabel "Taille des I/O en KB"
            set zlabel "MB/s"
            set style data lines
            set dgrid3d 30,30,10
            set pm3d at s
            set ticslevel 0
            set view 50, 340
            #set terminal postscript color
            set output "#{outfile}"
            splot "#{infile}" with lines lc rgb "black"
        EOF
        gnuplot.puts str
    end
end

sleep 1
plot readdata, readdata + ".png"
plot writedata, writedata + ".png"

