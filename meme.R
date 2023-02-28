
library(magick)

# square one
science_cat <- image_read('https://i.etsystatic.com/15398066/r/il/716548/2767044145/il_570xN.2767044145_md33.jpg') %>%
                image_scale(500) 

# square two
science_text <- image_blank(width = 500,
                          height = 500,
                          color = '#000000') %>%
                image_annotate(text = "As a scientiest from Paw-vard, I believe this variable is...",
                               color = '#FFFFFF',
                               size = 60,
                               font = "IMPACT",
                               gravity = 'center') 

# square three
shocked_cat <- image_read('https://i.pinimg.com/736x/c3/f5/06/c3f50601ff95bf39d0fdeff1db42aae1.jpg') %>%
                image_scale(500)

# square four
cat_text <-  image_blank(width = 500,
                         height = 500,
                         color = '#000000') %>%
                image_annotate(text = "CAT-EGORICAL",
                               color = '#FFFFFF',
                               size = 60,
                               font = "IMPACT",
                               gravity = 'center')

# making the rows
top_row <- image_append(c(science_cat, science_text))
bottom_row <- image_append(c(shocked_cat, cat_text))

finished_meme <- c(top_row, bottom_row) %>%
              image_append(stack= TRUE) %>%
              image_scale(800)

image_write(finished_meme, "catMeme.png")
