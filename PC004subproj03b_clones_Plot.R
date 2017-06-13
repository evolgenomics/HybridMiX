plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
plot_order
omit<-which(labels[plot_order] == "22" | labels[plot_order] == "23")
omit
plot_order<-plot_order[!omit]
plot_order
plot_order<-c(19,26,5,12,36,43,8,49,56,57,10,48,13,44,37,54,39,47,20,35,24,40,42,11,53,6,41,31,7,46,9,14,15,16,27,45,50,52,30,18,22,23,29,34,38,55,21,25,51,28,17,33,32)
plot_order<-plot_order[-omit]
plot_order
plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
plotOrder
plot_order
for (i in 1:length(plot_order)) {print(i)}
for (i in 1:length(plot_order)) {print(plot_order[i])}
plot_order<-plot_order-4
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=4)}
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=2)}
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
png("/fml/chones/www/dropbox/PC004sub03b.clones.recomb.chrX.png", width=1280, height=640)
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=2)}
dev.off()
png("/fml/chones/www/dropbox/PC004sub03b.clones.recomb.chrX.png", width=2400, height=1280)
abline(v=53004898/1e6,lwd=2,col="darkgrey")
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=2)}
dev.off()
png("/fml/chones/www/dropbox/PC004sub03b.clones.recomb.chrX.png", width=1800, height=960)
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=2)}
dev.off()
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
plot(range(window[,2]/1e6), c(0,51),type="n",xlab="chrX / Mb", ylab="Samples")
abline(v=53004898/1e6,lwd=2,col="darkgrey")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}
for (i in 1:length(plot_order)) {text(0,i,labels[plot_order[i]], pos=2)}


window<-read.table("PC004sub03b_averaged.chrX.out.1", sep="\t", header=TRUE)
window_cols<-seq(6,ncol(window), 3)
window_cols
names(window)[window_cols]
col_win<-c("#00727FFF","#657D7FFF","#00B6CCFF") 
geno_win<-window[,window_cols]
geno_win[geno_win <= 0.33] <- 1
geno_win<-window[,window_cols]
geno_win[geno_win <= 0.33] <- 0
geno_win[geno_win >= 0.67] <- 2
geno_win[geno_win > 0.33 & geno_win < 0.67] <- 1
geno_win<-geno_win+1
head(geno_win)
col_win<-c("#00727FFF","#657D7FFF","#00B6CCFF","#BBBBBBFF") 
geno_win[is.na(geno_win)]<-4
head(geno_win)
plot(range(window[,2]/1e6), c(0,53),type="n")

png("/fml/chones/www/dropbox/plot_clones.png", width=1200, height=800)
plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")
plot_order<-c(9,26,12,36,43,49,56,57,10,48,13,44,37,54,39,47,20,35,24,40,42,11,53,41,31,46,14,15,16,27,45,50,52,30,18,22,23,29,34,38,55,21,25,51,28,17,33,32)
plot_order<-plot_order-9
plot_order
plot_order<-plot_order+1
plot_order
dev.off()
for (i in plot_order) {print(i)}
#for (i in 1:length(plot_order)) {points(window[,2]/1e6,i,border=NA,col=col_win[geno_win[,plot_order[i]]])}

for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),border=NA,col=col_win[geno_win[,plot_order[i]]])}

plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),border=NA,col=col_win[geno_win[,plot_order[i]]],pch=15)}
warnings()
length(plot_order)



plot_order<-c(19,26,5,12,36,43,8,49,56,57,10,48,13,44,37,54,39,47,20,35,24,40,42,11,53,6,41,31,7,46,9,14,15,16,27,45,50,52,30,18,22,23,29,34,38,55,21,25,51,28,17,33,32)
plot_order<-plot_order-4
#plot_order
plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")

for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15)}
labels<-names(window)[window_cols]
labels<-as.numeric(unlist(lapply(labels, function (x) x<-substr(x, 2, nchar(x)-8))))


col_win<-c("#00727FFF","#657D7FFF","#00B6CCFF","#DDDDDDFF") 
png("/fml/chones/www/dropbox/plot_clones.png", width=1200, height=800)


plot(range(window[,2]/1e6), c(0,53),type="n",xlab="chrX / Mb", ylab="Samples")
#for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.2)}
#for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.4)}
#for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.5)}
for (i in 1:length(plot_order)) {points(window[,2]/1e6,rep(i,nrow(window)),col=col_win[geno_win[,plot_order[i]]],pch=15,cex=1.6)}

text(rep(0.5,length(labels)), seq(1, 53, 1), labels[plot_order])

dev.off()










