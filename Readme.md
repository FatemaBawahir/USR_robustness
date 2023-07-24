## Assumption ##
1. The number of concepts in the (concept row) USR are correct and thus our base of evaluation

## Features covered ##
1. USR is not empty
2. It has 10 or more lines
3. It does not start or end with quotes
4. It does not have any empty lines in between
5. Elements in each row do not contain extra spaces around them - not done
6. length of index row to match no. of concepts
7. index row to have numbers from first onwards
8. All rows except for sentence_type and construction to have same commas 
9. no special characters other than the ones allowed - not done
10. USR source sentence begins with a hash with no space between them
11. Checks for dependency row - 
    - USR to have 0:main
    - dependency value of the format **alphanum:alphanum** i.e it allows exactly one colon and no other special characters, no empty values and no in between space. For eg.
    valid entries - 2:k1, 5:rblsk, 0:main
    invalid entries - :, 44:, :kj, 2 :kj, 3:: kj$%


##  Input format ##
1. We can run single USR file.
2. We can run the script on a folder of USR files.
3. Each file consists of one USR
4. Each row of USR is separated by newline
5. There can be 10 or 11 rows in a valid USR

## Output format ##
1. Output file is - TestResults.csv which consists of three columns - 
File_path   Status    Comment
2. Status can be SUCCESS or ERROR.
3. For all USRs with ERROR status, the reason is stated in comment section

## Steps of execution ##
1. To run a single USR file, type the following in terminal - 
- **python USR_validity.py "USR_file_path"** and check the output in TestResults.csv
2. To run on a folder of USR files - run the following script - 
- Update the test.sh script with the **dir="USR_folder_path"**
- type **sh test.sh** in terminal and check the output in TestResults.csv

