#install.packages("faraway")
#install.packages("effsize")
require(faraway)
require(effsize)
mean=1
cliff=1
wilcox=1
scale_lab <- c("energy.t.","packet.t.","unique_sour.t.","unique_dest.t.","median_len.t.","mean_len.t.",
"device","protocol.t._ARP","protocol.t._HTTP","protocol.t._TCP","protocol.t._ICMPv6",
"protocol.t._NTP", "protocol.t._DNS", "protocol.t.UDP", "protocol.t._IGMPv3", "protocol.t._ICMP",
 "protocol.t._MDNS", "protocol.t._DHCP", "protocol.t._TLSv1.2", "protocol.t._SSDP")


data<-read.csv("pre_ml_dummies-Mirai.csv", header = TRUE)
data_ref<-data



has_sic <- data_ref[data_ref[,'target']==1,]
has_no_sic <- data_ref[data_ref[,'target']==0,]
for (i in seq(1, 15)){
target<-scale_lab[i]


print (target)
if (wilcox == 1) {

	res <- wilcox.test(has_no_sic[,target], has_sic[,target])
	p<-res[3][["p.value"]]
	corr <- p / 12
	print (corr)

	print (res)

}

if (mean == 1) {

	print(target)
	pic<-mean(has_sic[,target])
	print(pic)
	no_pic<-mean(has_no_sic[,target])
	print(no_pic)

}
if (cliff == 1)
	{
		f<-cliff.delta(has_no_sic[,target], has_sic[,target], return.dm=TRUE) 
		print(f)

	}
}


#~ nrow(has_no_sic)
