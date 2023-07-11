ryzen_url <- "https://notebookspec.com/pc-cpu/495-amd-ryzen-7-7800x3d.html"

#ดึงกล่องด้านซ้ายมือมาก่อน
ryzen_title<-ryzen_url %>%
  read_html()%>%
  html_elements("div.specificate-title")%>%
  html_text2()


ryzen_info <-ryzen_url %>%
  read_html()%>%
  html_elements("div.specificate-info")%>%
  html_text2()

ryzen_df <- data.frame (
  ryzen_title,
  ryzen_info
)

View(ryzen_df)
