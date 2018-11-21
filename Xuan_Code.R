library(officer)
library(magrittr)
library(tidyverse)
library(readxl)

##  pic a template you like
pres1 <- read_pptx("class example 2.pptx") 


##  get the layout
layout_summary(pres1)

master <- "Default Design"


## make a slide
layout_properties(x = pres1, layout = "Title Slide", master = master )

pres1 %<>%  add_slide(layout = "Title Slide", master = master) %>% 
  ph_with_text(type = "ctrTitle", str = "Advantages of a Bear Market") %>%
  ph_with_text(type="subTitle",str="Yes there is a positive side to a Bear Market!
")


pres1 %<>%  add_slide(layout = "Two Content", master = master) %>% 
  ph_with_text(type = "title", str = "Investing in Stocks") %>%
  ph_with_ul(type = "body", index = 1, 
               str_list = c("Represents ownership in a firm","Earn a return in two ways","Price of the stock rises over time","Dividends are paid to the stockholder","Stockholders have claim on all assets"),
               level_list = c(1,1,2,2,1),
             style = fp_text(font.size = 20))%>%
  ph_with_ul(type = "body", index = 2, 
               str_list = c("Right to vote for directors and on certain issues",
                            "Two types","Common stock","Right to vote","Receive dividends","Preferred stock","Receive a fixed dividend","Do not usually vote"),
               level_list = c(1,1,2,3,3,2,3,3),
             style = fp_text(font.size = 20))%>%
  ph_with_text(type = "sldNum", str="11-2") %>% 
  ph_with_text(type = "ftr", str = "Copyright © 2006 Pearson Addison-Wesley. All rights reserved.
")

               



print(pres1, target = "Xuan_ppt1-2.pptx") 
