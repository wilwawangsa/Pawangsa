#Nama : Wilwatikta Tripawangsa
#NIM  : 19523233
#Fundamen Sains Data

# Exercise 1: Statistics
{r}
library(ISLR)
{r}
dataCredit <- Credit
head(dataCredit)

# 1. Compute the mean and the median of Rating, Cards, and Age
{r}
#mean of Rating
mean(dataCredit$Rating)

{r}
#mean of Cards
mean(dataCredit$Cards)

{r}
#median of Age
mean(dataCredit$Age)

{r}
#median of Rating
median(dataCredit$Rating)

{r}
#median of Cards
median(dataCredit$Cards)

{r}
median(dataCredit$Age)

#median of age
{r}

# 2. Compute the mode of Gender, Student, and Married
library(lsr)
{r}
#mode of Gender
modeOf(dataCredit$Gender)

{r}
#mode of Student
modeOf(dataCredit$Student)

{r}
#mode of Married
modeOf(dataCredit$Married)

# 3. Compute the sample 10, 37, and 91 percentiles of Education
{r}
#percentiles 10 Education
quantile(x = dataCredit$Education, probs = 0.1)

{r}
#percentiles 37 of Education
quantile(x = dataCredit$Education, probs = 0.37)

{r}
#percentiles 91 of Education
quantile(x = dataCredit$Education, probs = 0.91)

# 4. Compute the quartiles of Balance and its corresponding boxplot
{r}
#quartile of Balance
quantile(x = dataCredit$Balance, probs = c(0.25,0.50,0.75))

{r}
#boxplot of Balance
boxplot(dataCredit$Balance)

# 5. Compute the correlation and the scatter plot between pairs of Limit and Rating, Age and Card, Income and Education
{r}
#newData01 (Limit & Rating)
newData01 <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
newData01

{r}
#correlation of newData01
cor(newData01)

{r}
#plot of newData01
plot(newData01)

{r}
#newData02 (Age & Cards)
newData02 <- data.frame(age = dataCredit$Age, cards = dataCredit$Cards)
newData02

{r}
#correlation of newData02
cor(newData02)

{r}
#plot of newData02
plot(newData02)

{r}
#newData03 (Income&Education)
newData03 <- data.frame(income = dataCredit$Income, education = dataCredit$Education)
newData03

{r}
#correlation of newData03
cor(newData03)

{r}
#plot of newData03
plot(newData03)

# Exercise 2: Probabilitas

# Sebuah koin dilemparkan sebanyak 4 kali kemudian akan dihitung berapa kali sisi Gambar akan muncul.
# Misalkan X merupakan suatu variabel acak yang menyatakan banyaknya sisi Gambar yang muncul dalam 4 kali pelemparan sebuah koin.
# Nilai-nilai X yang mungkin adalah 0,1,2,3,4,.
# Nilai X=0 berarti banyaknya sisi Gambar yang muncul adalah sebanyak 0 kali, X=4 berarti banyaknya sisi Gambar yang muncul adalah sebanyak 4 kali.
# Berikut akan dihitung probabilitas untuk setiap kejadian yang mungkin terjadi dengan parameter peluang muncul Gambar adalah 0,4 (PGambar = 0,4).

# Penyelesaian:
# Buat variabel acak X (jumlah Gambar muncul) yang mungkin dari percobaan 4x pelemparan koin

#kode variabel
koin_gambar = c(0,1,2,3,4)
koin_gambar

# Menentukan probabilitas binomial masing-masing variabel acak X
dbinom(koin_gambar, size = 5, prob = 0.4)