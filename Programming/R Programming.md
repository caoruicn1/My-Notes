### 1.4 How to create Vectors, Matrices, and more in R

```r
x <- c(1,2,3,4,5)
x[-1] 			# return 2,3,4,5, ignore the first one

mat <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=FALSE)

mat[1,2] 			# select row 1, column 2
mat[c(1,3), 2]     # select row 1,3, column 2


```

### 1.5 How to Import Data, Copy Data from Excel to R: .csv & .txt Formats

```r
read.table(file, header = FALSE, sep = "", quote = "\"'",
           dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
           row.names, col.names, as.is = !stringsAsFactors,
           na.strings = "NA", colClasses = NA, nrows = -1,
           skip = 0, check.names = TRUE, fill = !blank.lines.skip,
           strip.white = FALSE, blank.lines.skip = TRUE,
           comment.char = "#",
           allowEscapes = FALSE, flush = FALSE,
           stringsAsFactors = default.stringsAsFactors(),
           fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)

read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "", ...)

read.csv2(file, header = TRUE, sep = ";", quote = "\"",
          dec = ",", fill = TRUE, comment.char = "", ...)

read.delim(file, header = TRUE, sep = "\t", quote = "\"",
           dec = ".", fill = TRUE, comment.char = "", ...)

read.delim2(file, header = TRUE, sep = "\t", quote = "\"",
            dec = ",", fill = TRUE, comment.char = "", ...)

# if file=chose(), we can chose file manually
```

### 1.6 Importing Data and Working With Data in R
```r
rm()  		# remove data

df = read.csv(file=choose())
dim(df)			# return dimension of df
head(df)			# first 5 row
tail(df)			# last 5 row
names(df)			# return columns names

df[c(5,6,7),]		# select
df[5:7,]			# select
df[-(5:7),]		# select rows except 5:7
```


### 1.7 Working with Variables and Data in R

```r
df$a   		# return columns a
attach(df)	# save all columns data into memory
detach(df)	# delete all columns data into memory

class(df)		# type() check df type
levels(df)	# unique()
summary(df)	# describe()

```