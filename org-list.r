########################
# around line 255
# if using option #2 under 
# "filter the dataset to include only the institutions you want" (~line 263 in this repo)
# use this method to create the list of organizations formatted to work in the filter statement
# instead of copy/pasting
# 1. save my_organizations_filtered.csv as my_organizations_edited.csv
# 2. delete unwanted organizations. remove whole lines
# 3. run the code below
# 4. copy the cat output in the console and paste below in #2)

# create org name list
my_orgs <- read_csv("./data/my_organizations_edited.csv", col_types = cols(.default = "c"))

output_orgs <- "organization_name ==\""
i = 1;
len_orgs = length(my_orgs$n);

for(uni_name in my_orgs$organization_name){
  print(uni_name)
  if(i != len_orgs){
    paste_val = "\"\n| organization_name ==\"";
  }else
  {
    paste_val = "\"";
  }
  output_orgs <- paste0(output_orgs, uni_name, paste_val)
  i <- i+1;
}

########################
# copy cat output from console and paste into option #2 under
# "filter the dataset to include only the institutions you want"
# ~line 263 in this repo
########################
cat(output_orgs)