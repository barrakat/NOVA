library("GGally")
library("ggplot2")

ggpairs(iris, aes(color = Species))+ theme_bw()
## Change color manually.
## Loop through each plot changing relevant scales
for(i in 1:p$nrow) {
    for(j in 1:p$ncol){
        p[i,j] <- p[i,j] + 
            scale_fill_manual(values=c("#00AFBB",
                                       "#E7B800",
                                       "#FC4E07")) +
            scale_color_manual(values=c("#00AFBB",
                                        "#E7B800",
                                        "#FC4E07"))  
    }
}