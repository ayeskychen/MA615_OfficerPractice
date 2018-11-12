library(officer)
library(magrittr)
library(tidyverse)
library(readxl)

##  pic a template you like
pres1 <- read_pptx("/Users/dongyifu/Desktop/drop1.pptx") 


##  get the layout
layout_summary(pres1)

master <- "Droplet"

## 

layout_properties(x = pres1, layout = "Title Slide", master = master )

## title slide


## make a slide



layout_properties(x = pres1, layout = "Title and Content", master = master )
pres1 %<>% add_slide(layout="Title and Content",master=master) %>%
  ph_with_text(type="title", str="Stock Markets: Dow Jones Industrial Average") %>%
  ph_with_img(type = "body", src = "slide5.jpg", height = 4,index=2)%>%
  ph_with_text(type =  "dt", str = format(Sys.Date()))%>%
  ph_with_text(type = "ftr", str = "Key Investment Indices")



layout_properties(x = pres1, layout = "Title and Content", master = master )
pres1 %<>% add_slide(layout="Title and Content",master=master) %>%
  ph_with_text(type="title", str="Dow Jones") %>%
  ph_with_img(type = "body", src = "slide6.jpg", height = 4,index=2)


print(pres1, target = "russel2000.pptx") 
