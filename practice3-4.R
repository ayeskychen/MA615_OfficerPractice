pres2<-read_pptx("template.pptx")
master <- "Default Design"
layout_properties(x = pres2, layout = "Title Slide", master = master )

pres2 %<>% add_slide(layout="Title and Content",master=master) %>%
  ph_with_text(type="title", str="Investing in Stocks: Sample Corporate Stock Certificate") %>%
  ph_with_img_at(src = "Picture1.jpg", width = 6,height = 4,left = 2,top = 2.5,rot = 0)%>%
  ph_with_text(type = "ftr", str = "Figure 11.1  Wien Consolidated Airlines Stock")


pres2 %<>% add_slide(layout="Title and Content",master=master) %>%
  ph_with_text(type="title", str="What is a Bear Market?") %>%
  ph_with_text(type = "body", str = "A decline of 15-20% of the broad market coupled with pessimistic sentiment underlying the stock market.
               ")%>%
  ph_with_img_at(src = "Picture2.jpg", width = 5,height = 3,left = 3,top = 4,rot = 0)

print(pres2, target = "practice.pptx") 