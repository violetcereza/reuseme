# file_outline() works

    Code
      file_outline(path = my_test_file)
    Message
      
      -- `ref/my-analysis.R` 🦐 
    Output
      `i` Read my streets data 
      `i` data wrangling
      `i` Write my streets 
      `i` TODO eventually detect this- `Donev?`
      `i` TODO Create a new version- `Donev?`
      `i`  gt::tabheader(title = "A real one
      `i`    gt::tabheader(subtitle = "A true one

# Other arguments work

    Code
      file_outline("street", my_test_file, alpha = TRUE, work_only = FALSE)
    Message
      
      -- `ref/my-analysis.R` 🦐 
    Output
      `i` Read my streets data 
      `i` Write my streets 

# file_outline() is a data frame

    Code
      outline
    Message
      
      -- `outline-script.R` 🦐 
    Output
      `i` Load packages 
      `i` Wrangle + visualize data 
      `i` A great title
      `i` TODO improve this Viz!- `Donev?`
