# Praktikum Modul 1
# Nama : M. Armand Giovani
# NRP : 5025211054
# Kelas : Probstat C

#NO.1

# a. Pendistribusian banyak bayi laki-laki
n <- 10
p <- 0.488
distribusi <- dbinom(0:n, n, p)
distribusi

# b. Probabilitas tepat tiga bayi di antaranya berjenis kelamin laki-laki
prob_tepat_tiga <- dbinom(3, n, p)
prob_tepat_tiga

# c. Probabilitas kurang dari tiga bayi di antaranya berjenis kelamin laki-laki
prob_kurang_tiga <- pbinom(2, n, p)
prob_kurang_tiga

# d. Probabilitas tiga atau lebih bayi di antaranya berjenis kelamin laki-laki
prob_tiga_lebih <- 1 - pbinom(2, n, p)
prob_tiga_lebih

# e. Nilai harapan dan simpangan baku banyak bayi laki-laki
mean <- n * p
sd <- sqrt(n * p * (1 - p))
mean
sd

# f. Histogram pendistribusian banyak bayi laki-laki
set.seed(123)
x <- rbinom(1000, n, p)
hist(x, breaks = seq(-0.5, n + 0.5, by = 1), col = "lightblue", 
     main = "Histogram Banyak Bayi Laki-laki",
     xlab = "Banyak Bayi Laki-laki")


#NO.2

# a. Pendistribusian banyak kematian karena kanker tulang
lambda <- 1.8
distribusi <- dpois(0:10, lambda)
distribusi

# b. Apakah 4 kematian akibat kanker tulang peristiwa yang tidak biasa?
# Misalkan tingkat signifikansi yang ditentukan adalah 0,05
prob_4_kematian <- dpois(4, lambda)
signif <- 0.05
batas_bawah <- qpois(signif/2, lambda)
batas_atas <- qpois(1 - signif/2, lambda)
tidak_biasa <- ifelse(4 < batas_bawah | 4 > batas_atas, "Ya", "Tidak")
prob_4_kematian
batas_bawah
batas_atas
tidak_biasa

# c. Peluang paling banyak 4 kematian akibat kanker tulang
prob_paling_banyak_4 <- ppois(4, lambda)
prob_paling_banyak_4

# d. Peluang lebih dari 4 kematian akibat kanker tulang
prob_lebih_dari_4 <- 1 - ppois(4, lambda)
prob_lebih_dari_4

# e. Nilai harapan dan standar deviasi banyak kematian akibat kanker tulang
mean <- lambda
sd <- sqrt(lambda)
mean
sd

# f. Histogram pendistribusian banyak kematian akibat kanker tulang
set.seed(123)
x <- rpois(1000, lambda)
hist(x, breaks = seq(-0.5, max(x) + 0.5, by = 1), col = "lightblue", 
     main = "Histogram Banyak Kematian Kanker Tulang",
     xlab = "Banyak Kematian Kanker Tulang")

# g. Simulasi
set.seed(123)
simulasi <- rpois(10000, lambda)
prob_4_kematian_simulasi <- sum(simulasi == 4) / length(simulasi)
prob_lebih_dari_4_simulasi <- sum(simulasi > 4) / length(simulasi)
prob_paling_banyak_4_simulasi <- sum(simulasi <= 4) / length(simulasi)
prob_4_kematian_simulasi
prob_lebih_dari_4_simulasi
prob_paling_banyak_4_simulasi


#NO.3

# a. Fungsi probabilitas dari distribusi Chi-Square
x <- 3
v <- 10
prob_chi_sq <- dchisq(x, v)
prob_chi_sq

# b. Histogram dari distribusi Chi-Square dengan 500 data acak
set.seed(123)
x <- rchisq(500, v)
hist(x, breaks = seq(0, max(x) + 1, by = 1), col = "lightblue",
     main = "Histogram Distribusi Chi-Square",
     xlab = "Nilai")

# c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square
mean_chi_sq <- v
var_chi_sq <- 2 * v
mean_chi_sq
var_chi_sq


#NO. 4

# a. Fungsi probabilitas dari distribusi Normal
set.seed(123)
n <- 100
mean <- 45
sd <- 5
x <- rnorm(n, mean, sd)
x1 <- floor(mean)
x2 <- ceiling(mean)
prob_normal <- pnorm(x2, mean, sd) - pnorm(x1 - 1, mean, sd)
z_score <- (x1 - mean) / sd
plot(x, type = "l", main = "Data Bangkitan Acak Distribusi Normal", xlab = "Observasi ke-i", ylab = "Nilai")

# b. Histogram dari distribusi Normal dengan breaks 50
set.seed(123)
x <- rnorm(10000, mean, sd)
hist(x, breaks = 50, col = "lightblue", main = "Histogram Distribusi Normal", xlab = "Nilai")

# c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal
variance <- var(x)
variance


#NO. 5

# 1. Probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan
pt(-2.34, df = 6)

# 2. Probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan
1 - pt(1.34, df = 6)

# 3. Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan
pt(-1.23, df = 3) + (1 - pt(1.23, df = 3))

# 4. Probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan
pt(0.94, df = 14) - pt(-0.94, df = 14)

# 5. Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut
qt(0.0333, df = 5, lower.tail = TRUE)

# 6. Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 
qt(0.125, df = 25, lower.tail = FALSE)

# 7. Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut
t_score_right <- qt(0.25 + (0.75 / 2), df = 11, lower.tail = FALSE)
t_score_left <- qt(0.25 + (0.75 / 2), df = 11, lower.tail = TRUE)
t_score_right - abs(t_score_left)

# 8. Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut
t_score_right <- qt(0.0333 / 2, df = 23, lower.tail = FALSE)
t_score_left <- qt(0.0333 / 2, df = 23, lower.tail = TRUE)
abs(t_score_left) + t_score_right

