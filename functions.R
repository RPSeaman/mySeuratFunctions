# functions.R
# These are a set of seurat functions that are useful for efficient plotting. 
# July 20, 2023



### This makes a feature plot and creates a plot object whith that name
makeFP <- function(seuratObj, geneID, geneName = "", show = F) {
    if(geneName ==""){
        objName <- geneID
    }else{
        objName <- geneName
    }
    nameFP <- paste0(objName,"_FP")
    assign(nameFP, FeaturePlot(seuratObj, features = geneID, pt.size = 0.5, order = T) + labs(title = paste0(geneName,"  ", geneID)), envir = .GlobalEnv)
    if (show == T){
        FeaturePlot(seuratObj, features = geneID, pt.size = 0.5, order = T) + labs(title = paste0(geneName,"  ", geneID))
    }
}
