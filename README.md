# Prak1_Probstat2023_C_5025211054

**<br>Nama : M. Armand Giovani**
**<br>NRP : 5025211054**
**<br>Kelas : Probstat C**

## NO. 1

> **Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488. Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran, maka:**

**1a.)** **Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.**

Soal ini menerapkan konsep distribusi binomial. Distribusi ini digunakan untuk menghitung probabilitas kejadian sukses dalam sejumlah percobaan tertentu, dengan asumsi setiap percobaan bersifat independen, hasil dari setiap percobaan hanya memiliki dua kemungkinan (sukses atau gagal), dan probabilitas kejadian sukses adalah konstan dalam setiap percobaan. Fungsi yang digunakan, yaitu `dbinom(0:n, n, p)` dimana `n` merupakan jumlah percobaan, `p` adalah probabilitas kejadian sukses. Output dari fungsi ini akan memberikan nilai probabilitas kejadian sukses untuk setiap kemungkinan jumlah bayi laki-laki yang ada.

```r
# a. Pendistribusian banyak bayi laki-laki
n <- 10
p <- 0.488
distribusi <- dbinom(0:n, n, p)
distribusi
```

![image](https://user-images.githubusercontent.com/100523471/235437727-e8dcf8c3-ccc0-4c0c-9ba6-ff3af7693d9a.png)

**1b.)** **Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?**

Soal ini juga menerapkan konsep distribusi binomial. Fungsi yang digunakan, yaitu `dbinom(3, n, p)` dimana nilai argumen x sebagai 3, `n` merupakan jumlah percobaan, `p` adalah probabilitas kejadian sukses. Output dari fungsi ini akan memberikan nilai probabilitas terjadinya tepat tiga bayi laki-laki dalam sehari di rumah sakit.

```r
# b. Probabilitas tepat tiga bayi di antaranya berjenis kelamin laki-laki
prob_tepat_tiga <- dbinom(3, n, p)
prob_tepat_tiga
```

![image](https://user-images.githubusercontent.com/100523471/235437844-23143c8e-c9ec-46ad-822e-e91d505615e8.png)

**1c.)** **Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?**

Soal ini juga menerapkan konsep distribusi binomial. Fungsi yang digunakan, yaitu `pbinom(2, n, p)` dimana nilai argumen q sebagai 2 (kurang dari 3 bayi laki-laki), `n` merupakan jumlah percobaan, `p` adalah probabilitas kejadian sukses. Output dari fungsi ini akan memberikan nilai probabilitas terjadinya kurang dari tiga bayi laki-laki dalam sehari di rumah sakit.

```r
# c. Probabilitas kurang dari tiga bayi di antaranya berjenis kelamin laki-laki
prob_kurang_tiga <- pbinom(2, n, p)
prob_kurang_tiga
```

![image](https://user-images.githubusercontent.com/100523471/235438192-54771f8e-8b9c-4ccb-9927-6be1ae3fee91.png)

**1d.)** **Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?**

Soal ini juga menerapkan konsep distribusi binomial. Fungsi yang digunakan, yaitu `pbinom(2, n, p)` dimana nilai argumen q sebagai 2 (kurang dari 3 bayi laki-laki), `n` merupakan jumlah percobaan, `p` adalah probabilitas kejadian sukses. Output dari fungsi ini bisa didapatkan dari mengurangkan nilai probabilitas tersebut dari 1 untuk mendapatkan probabilitas terjadinya tiga atau lebih bayi laki-laki.

```r
# d. Probabilitas tiga atau lebih bayi di antaranya berjenis kelamin laki-laki
prob_tiga_lebih <- 1 - pbinom(2, n, p)
prob_tiga_lebih
```

![image](https://user-images.githubusercontent.com/100523471/235438553-714426ed-5add-469b-9960-16b5639bdb17.png)

**1e.)** **Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?**

Soal ini menerapkan konsep mean (nilai harapan) dan standard deviation (simpangan baku) dari distribusi binomial. Distribusi binomial mengasumsikan bahwa setiap percobaan adalah independen, hanya memiliki dua hasil mungkin (sukses atau gagal), dan probabilitas sukses konstan dalam setiap percobaan. Fungsi yang digunakan, yaitu `Mean (nilai harapan) = n * p` dan `Standard Deviation (simpangan baku) = sqrt(n * p * (1 - p))` dimana `n` merupakan jumlah percobaan, `p` adalah probabilitas kejadian sukses. Output dari fungsi ini yaitu nilai mean dan standard deviation (simpangan baku) banyak anak laki-laki.

```r
# e. Nilai harapan dan simpangan baku banyak bayi laki-laki
mean <- n * p
sd <- sqrt(n * p * (1 - p))
mean
sd
```

![image](https://user-images.githubusercontent.com/100523471/235440478-8c68be3e-089e-4e59-8842-db61346908ae.png)

**1f.)** **Gambarkan histogram pendistribusian banyak bayi laki-laki.**

Soal ini menerapkan konsep histogram sebagai salah satu metode visualisasi data yang digunakan untuk menampilkan distribusi dari data numerik. Histogram membagi rentang data menjadi beberapa interval dan menampilkan frekuensi atau jumlah data pada setiap interval tersebut. Fungsi yang digunakan yaitu fungsi `rbinom()` untuk menghasilkan 1000 nilai acak dari distribusi binomial. Selanjutnya, kita dapat menggunakan fungsi `hist()` untuk menghasilkan histogram dari data acak tersebut dengan membagi rentang data menjadi beberapa interval yang ditentukan oleh argumen `breaks`. Output dari fungsi ini yaitu histogram pendistribusian banyak bayi laki-laki.

```r
# f. Histogram pendistribusian banyak bayi laki-laki
set.seed(123)
x <- rbinom(1000, n, p)
hist(x, breaks = seq(-0.5, n + 0.5, by = 1), col = "lightblue",
     main = "Histogram Banyak Bayi Laki-laki",
     xlab = "Banyak Bayi Laki-laki")
```

![image](https://user-images.githubusercontent.com/100523471/235441092-555cb705-e284-40ae-a030-470e7ec1843c.png)

## NO. 2

> **Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.**

**2a.)** **Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai.**

Soal ini menerapkan konsep distribusi Poisson. Distribusi ini merupakan distribusi probabilitas untuk menghitung banyak kejadian langka dalam interval waktu tertentu. Distribusi Poisson digunakan ketika banyaknya kejadian dalam suatu interval waktu memiliki rata-rata tertentu, tetapi tidak menentu berapa kejadian yang terjadi dalam interval waktu tersebut. Fungsi yang digunakan, yaitu `dpois(0:10, lambda)` dimana `10` merupakan batas atas dari banyaknya kejadian yang dihitung probabilitasnya dalam interval waktu atau ruang tertentu, `lambda` adalah rata-rata jumlah kejadian pada interval waktu atau ruang yang sama. Output dari fungsi ini akan memberikan nilai probabilitas kejadian langka untuk banyak kematian karena kanker tulang.

```r
# a. Pendistribusian banyak kematian karena kanker tulang
lambda <- 1.8
distribusi <- dpois(0:10, lambda)
distribusi
```

![image](https://user-images.githubusercontent.com/100523471/235442208-b20db14e-6676-42a4-96fb-7775334eb008.png)

**2b.)** **Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.**

Soal ini juga menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `dpois(4, lambda)` dimana nilai argumen x sebagai 4, `lambda` adalah rata-rata jumlah kejadian pada interval waktu atau ruang yang sama. Kemudian fungsi `signif` untuk menentukan tingkat signifikansi, kita juga menggunakan fungsi `qpois()` untuk menghitung batas bawah dan batas atas dari interval kepercayaan. Output dari fungsi ini akan memberikan nilai probabilitas munculnya tepat 4 kematian dalam 20 tahun ke depan, batas bawah dan batas atas dari interval kepercayaan, serta apakah peristiwa tersebut tidak biasa atau tidak.

```r
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
```

![image](https://user-images.githubusercontent.com/100523471/235442827-8130b110-5574-4085-bad5-0de5b04ab7e0.png)

**2c.)** **Berapa peluang paling banyak 4 kematian akibat kanker tulang?**

Soal ini juga menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `ppois(4, lambda))` dimana nilai argumen x sebagai 4, `lambda` adalah rata-rata jumlah kejadian pada interval waktu atau ruang yang sama. Output dari fungsi ini akan memberikan nilai probabilitas paling banyak 4 kematian akibat kanker tulang dalam 20 tahun ke depan.

```r
# c. Peluang paling banyak 4 kematian akibat kanker tulang
prob_paling_banyak_4 <- ppois(4, lambda)
prob_paling_banyak_4
```

![image](https://user-images.githubusercontent.com/100523471/235443241-13b57571-b090-4f70-af33-fedce4683e2a.png)

**2d.)** **Berapa peluang lebih dari 4 kematian akibat kanker tulang?**

Soal ini juga menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `ppois(4, lambda))` dimana nilai argumen x sebagai 4, `lambda` adalah rata-rata jumlah kejadian pada interval waktu atau ruang yang sama. Output dari fungsi ini akan memberikan nilai probabilitas lebih dari 4 kematian akibat kanker tulang dalam 20 tahun ke depan. Output ini didapatkan dengan menggunakan fungsi `ppois(4, lambda))` dengan argumen `x = 4` dan `lambda = 1.8` dan menggunakan operator `1 -` untuk menghitung peluang lebih dari 4.

```r
# d. Peluang lebih dari 4 kematian akibat kanker tulang
prob_lebih_dari_4 <- 1 - ppois(4, lambda)
prob_lebih_dari_4
```

![image](https://user-images.githubusercontent.com/100523471/235443621-7a82e1b8-8874-49b4-96a5-d91407d1ac24.png)

**2e.)** **Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?**

Soal ini menerapkan konsep mean (nilai harapan) dan standard deviation (simpangan baku) dari distribusi binomial. Distribusi binomial mengasumsikan bahwa setiap percobaan adalah independen, hanya memiliki dua hasil mungkin (sukses atau gagal), dan probabilitas sukses konstan dalam setiap percobaan. Fungsi yang digunakan, yaitu `Mean (nilai harapan) = lambda` dan `Standard Deviation (simpangan baku) = sqrt(lambda)` dimana `lambda` adalah rata-rata jumlah kejadian pada interval waktu atau ruang yang sama. Output dari fungsi ini yaitu nilai mean dan standard deviation (simpangan baku) banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

```r
# e. Nilai harapan dan standar deviasi banyak kematian akibat kanker tulang
mean <- lambda
sd <- sqrt(lambda)
mean
sd
```

![image](https://user-images.githubusercontent.com/100523471/235443854-00b5760a-7c58-452b-9ef6-555b1e864ef6.png)

**2f.)** **Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.**

Soal ini menerapkan konsep histogram sebagai salah satu metode visualisasi data yang digunakan untuk menampilkan distribusi dari data numerik. Histogram membagi rentang data menjadi beberapa interval dan menampilkan frekuensi atau jumlah data pada setiap interval tersebut. Fungsi yang digunakan yaitu fungsi `set.seed(123)` digunakan untuk menghasilkan angka random yang selalu sama setiap kali kode dijalankan. Kemudian kita juga menggunakan fungsi `rpois(1000, lambda)` digunakan untuk menghasilkan 1000 data acak dari distribusi Poisson dengan parameter lambda yang telah ditentukan sebelumnya. Selanjutnya, kita dapat menggunakan fungsi `hist()` untuk menghasilkan histogram dari data acak tersebut dengan membagi rentang data menjadi beberapa interval yang ditentukan oleh argumen `breaks`. Output dari fungsi ini yaitu histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.

```r
# f. Histogram pendistribusian banyak kematian akibat kanker tulang
set.seed(123)
x <- rpois(1000, lambda)
hist(x, breaks = seq(-0.5, max(x) + 0.5, by = 1), col = "lightblue",
     main = "Histogram Banyak Kematian Kanker Tulang",
     xlab = "Banyak Kematian Kanker Tulang")
```

![image](https://user-images.githubusercontent.com/100523471/235444217-6513c2cc-38d8-407b-a754-9a0970e7acf4.png)

**2g.)** **Gunakan simulasi untuk memeriksa hasil sebelumnya.**

Soal ini menerapkan konsep distribusi Poisson. Fungsi yang digunakan yaitu fungsi-fungsi yang sudah digunakan pada soal sebelumnya yaitu `set.seed(123)` dab `rpois(10000, lambda)`. Output dari fungsi ini yaitu nilai probabilitas dari:

Terjadinya 4 kematian akibat kanker tulang di dalam 10000 simulasi yang dilakukan.
Terjadinya lebih dari 4 kematian akibat kanker tulang di dalam 10000 simulasi yang dilakukan.
Paling banyak terjadi 4 kematian akibat kanker tulang di dalam 10000 simulasi yang dilakukan.

```r
# g. Simulasi
set.seed(123)
simulasi <- rpois(10000, lambda)
prob_4_kematian_simulasi <- sum(simulasi == 4) / length(simulasi)
prob_lebih_dari_4_simulasi <- sum(simulasi > 4) / length(simulasi)
prob_paling_banyak_4_simulasi <- sum(simulasi <= 4) / length(simulasi)
prob_4_kematian_simulasi
prob_lebih_dari_4_simulasi
prob_paling_banyak_4_simulasi
```

![image](https://user-images.githubusercontent.com/100523471/235445182-855b3742-4553-4031-a6c8-7dc0828bfc6f.png)

**2h.)** **Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.**

Soal ini mengharuskan kita untuk menafsirkan hasil simulasi dan membandingkannya dengan hasil yang telah dihitung sebelumnya, supaya dapat memberikan pemahaman yang lebih baik tentang bagaimana distribusi Poisson dapat digunakan untuk memodelkan banyaknya kematian akibat kanker tulang dalam suatu periode waktu..

```
Berdasarkan simulasi yang telah dilakukan, distribusi banyak kematian akibat kanker tulang memiliki bentuk yang mirip dengan distribusi Poisson
dengan parameter λ = 1,8. Simulasi juga menunjukkan bahwa probabilitas mengalami 4 kematian akibat kanker tulang dalam 20 tahun sebesar 0,1329,
sedangkan hasil analisis pada pertanyaan 2d menunjukkan probabilitas sebesar 0,1276. Perbedaan tersebut dapat disebabkan oleh kebetulan dalam
sampel simulasi atau perbedaan metode perhitungan. Namun, secara umum, hasil analisis dan simulasi menunjukkan bahwa kemungkinan mengalami
kematian akibat kanker tulang dalam 20 tahun di pabrik ban cukup tinggi dan peristiwa 4 kematian dalam 20 tahun dapat dikatakan tidak biasa
dengan tingkat signifikansi 0,05.
```

## NO. 3

> **Diketahui nilai x = 3 dan v = 10. Tentukan:**

**3a.)** **Fungsi Probabilitas dari Distribusi Chi-Square.**

Soal ini menerapkan konsep distribusi Chi-Square. Fungsi yang digunakan, yaitu `dchisq(x, v)` dimana `x` merupakan banyak data dan `v` adalah adalah derajat kebebasan. Maka, didapatkan hasil `0.02353326` sebagai Probabilitas dari Distribusi Chi-Square.

```r
# a. Fungsi probabilitas dari distribusi Chi-Square
x <- 3
v <- 10
prob_chi_sq <- dchisq(x, v)
prob_chi_sq
```

![image](https://user-images.githubusercontent.com/100523471/235472903-c433811a-4c94-48ca-b491-0dd55fbf6107.png)

**3b.)** **Histogram dari distribusi Chi-Square dengan 500 data acak.**

Soal ini menerapkan konsep distribusi Chi-Square. Fungsi yang digunakan, yaitu `rchisq(500, v)` dimana `500` merupakan data random dan `v` merupakan derajat kebebasan serta fungsi `hist()` untuk menghasilkan histogram dari data acak tersebut dengan membagi rentang data menjadi beberapa interval yang ditentukan oleh argumen `breaks`. Maka, akan ditampilkan sebuah histogram dari Distribusi Chi-Square.

```r
# b. Histogram dari distribusi Chi-Square dengan 500 data acak
set.seed(123)
x <- rchisq(500, v)
hist(x, breaks = seq(0, max(x) + 1, by = 1), col = "lightblue",
     main = "Histogram Distribusi Chi-Square",
     xlab = "Nilai")
```

![image](https://user-images.githubusercontent.com/100523471/235472959-4103fde6-f134-4657-9985-d211fc4c56a8.png)

**3c.)** **Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.**

Soal ini menerapkan konsep distribusi Chi-Square. Digunakan rumus rataan distribusi Chi-Square (μ), yaitu `mean_chi_sq(μ) = v` dan rumus varians distribusi Chi-Square (σ²), yaitu `var_chi_sq(σ²) = 2*v` dimana `v` merupakan derajat kebebasan. Sehingga, didapatkan hasil `μ = 10` dan `σ² =20`.

```r
# c. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square
mean_chi_sq <- v
var_chi_sq <- 2 * v
mean_chi_sq
var_chi_sq
```

![image](https://user-images.githubusercontent.com/100523471/235473003-45eb5a17-8b21-4fef-89ec-4a2016e1c4cd.png)

## NO. 4

> **Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5. Tentukan**

**4a.)** **Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).**

Soal ini menerapkan konsep distribusi Normal. Untuk mendapatkan nilai Z-Score fungsi yang digunakan, yaitu `rnorm(n, mean, sd)` dimana `n` merupakan banyak data random, `mean` merupakan rat-rata, dan `sd` merupakan standar deviasi. Sedangkan untuk menampilkan plot data generate randomnya dalam bentuk grafik fungsi yang digunakan, yaitu `plot(x, type = "l", main = "Data Bangkitan Acak Distribusi Normal", xlab = "Observasi ke-i", ylab = "Nilai")`. Sehingga akan ditampilkan nilai Z-Score dan juga plot data generate randomnya dalam bentuk grafik.

```r
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
```

![image](https://user-images.githubusercontent.com/100523471/235473221-b4796b40-2521-498d-9113-d5eaa5621b23.png)

**4b.)** **Gambarkan histogram dari distribusi Normal dengan breaks 50**

Soal ini menerapkan konsep distribusi Normal. Fungsi yang digunakan, yaitu `hist(x, breaks = 50, col = "lightblue", main = "Histogram Distribusi Normal", xlab = "Nilai")` dimana x didapatkan dari fungsi `rnorm(10000, mean, sd)` yang mana `10000` merupakan banyak data random, `mean` merupakan rata-rata, `sd` merupakan standar deviasi, dan breaks yang telah diketahui nilainya. Maka, akan ditampilkan Histogram dari Distribusi Normal.

```r
# b. Histogram dari distribusi Normal dengan breaks 50
set.seed(123)
x <- rnorm(10000, mean, sd)
hist(x, breaks = 50, col = "lightblue", main = "Histogram Distribusi Normal", xlab = "Nilai")
```

![image](https://user-images.githubusercontent.com/100523471/235473258-b0df77db-27b6-46e9-95d4-98af1f9800dd.png)

**4c.)** **Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.**

Soal ini menerapkan konsep distribusi Normal. Untuk mendapatkan nilai varians, fungsi yang digunakan, yaitu `varians = (sd(x))^2` atau pangkat dua dari standar deviasi x hasil generate random nilai Distribusi Normal. Dimana `sd` merupakan standar deviasi dan nilai x didapatkan dari fungsi `rnorm(n, mean, sd)` dimana `n` merupakan banyak data random, `mean` merupakan rata-rata, dan `sd` merupakan standar deviasi. Sehingga akan ditampilkan nilai varians yang tidak tetap(berubah-ubah) menyesuaikan dengan nilai random nya.

```r
# c. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal
varians = (sd(x))^2
paste("σ² =", varians)
```

![image](https://user-images.githubusercontent.com/100523471/235473303-500d6d05-badd-4b77-af02-6292fcde9f48.png)

## NO. 5

> **Kerjakanlah menggunakan distribusi T-Student.**

**5a.)** **Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `pt()`, yang merupakan fungsi distribusi kumulatif T-Student pada R. Fungsi ini digunakan untuk menghitung probabilitas bahwa nilai acak T-Student kurang dari atau sama dengan nilai yang diberikan.

```r
# a. Probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan
pt(-2.34, df = 6)
```

![image](https://user-images.githubusercontent.com/100523471/235473492-67876f84-5763-47aa-a874-1542623f51a9.png)

Dalam program di atas, `pt(-2.34, df = 6)` digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X kurang dari `-2.34` dengan `6` derajat kebebasan. Hasil output yang akan dikeluarkan adalah nilai probabilitas sebesar `0.02892197`.

**5b.)** **Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `pt()`, yang merupakan fungsi untuk menghitung probabilitas kumulatif distribusi t-Student dengan menggunakan t-score dan derajat kebebasan sebagai inputnya.

```r
# b. Probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan
1 - pt(1.34, df = 6)
```

![image](https://user-images.githubusercontent.com/100523471/235473541-f1f5b186-f2ed-46f6-9a13-86c2a0540058.png)

Dalam program di atas, digunakan input `t-score` sebesar `1.34` dan `derajat kebebasan` sebesar `6`. Kemudian, dilakukan pengurangan dari 1 dengan hasil fungsi `pt()` tersebut untuk mendapatkan probabilitas terjadinya suatu peristiwa acak X lebih dari 1.34. Output yang dikeluarkan adalah nilai probabilitas terjadinya suatu peristiwa acak X lebih dari 1.34 dengan 6 derajat kebebasan.

**5c.)** **Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `pt()`, yang merupakan fungsi untuk menghitung probabilitas kumulatif dari distribusi t-Student dengan derajat kebebasan tertentu (parameter df) pada nilai tertentu (parameter pertama dalam fungsi).

```r
# c. Probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan
pt(-1.23, df = 3) + (1 - pt(1.23, df = 3))
```

![image](https://user-images.githubusercontent.com/100523471/235473584-55eaa0bc-d306-42d2-9c69-766823698402.png)

Dalam program di atas, kita ingin mencari probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan. Untuk nilai kurang dari -1,23, kita menggunakan fungsi `pt()` dengan nilai -1.23 dan 3 derajat kebebasan. Sedangkan untuk nilai lebih besar dari 1,23, kita menggunakan 1 dikurangi dengan hasil fungsi `pt()` pada nilai 1.23 dan 3 derajat kebebasan. Output yang dihasilkan adalah probabilitas dari peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan.

**5d.)** **Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `pt()`, yang merupakan fungsi untuk menghitung probabilitas kumulatif dari distribusi t-Student dengan derajat kebebasan tertentu (parameter df) pada nilai tertentu (parameter pertama dalam fungsi).

```r
# d. Probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan
pt(0.94, df = 14) - pt(-0.94, df = 14)
```

![image](https://user-images.githubusercontent.com/100523471/235473621-f6c4674a-fa74-4a48-b8d2-85415e0ce867.png)

Dalam program di atas, kita ingin mencari probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan, kita dapat menggunakan fungsi `pt` dengan memasukkan nilai 0.94 dan -0.94 sebagai parameter, serta derajat kebebasan (df) sebesar 14. Kemudian, nilai `pt(0.94, df = 14)` akan dikurangi dengan nilai `pt(-0.94, df = 14)` untuk mendapatkan probabilitas peristiwa acak X berada di antara -0,94 dan 0,94. Output yang akan dikeluarkan oleh fungsi ini adalah nilai probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan.

**5e.)** **Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `qt()`, yang merupakan fungsi untuk menghitung nilai t-score dengan memasukkan luasan di bawah kurva distribusi t-Student dengan derajat kebebasan tertentu.

```r
# e. Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut
qt(0.0333, df = 5, lower.tail = TRUE)
```

![image](https://user-images.githubusercontent.com/100523471/235473672-7e858312-0d40-4e4e-8fff-55ff163cbcf6.png)

Dalam program di atas, fungsi `qt()` dipanggil dengan tiga parameter: luasan 0,0333 satuan persegi di bawah kurva, derajat kebebasan 5, dan nilai `lower.tail = TRUE` yang menunjukkan bahwa kita ingin menghitung nilai t-score di sebelah kiri luasan. Output yang dihasilkan adalah nilai t-score sebesar `-2.337342`. Ini berarti bahwa nilai acak X yang dipilih memiliki probabilitas sebesar 0,0333 untuk lebih kecil dari `-2.337342` dengan 5 derajat kebebasan.

**5f.)** **Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `qt()`, yang merupakan fungsi untuk menghitung nilai t-score dengan memasukkan luasan di bawah kurva distribusi t-Student dengan derajat kebebasan tertentu.

```r
# f. Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan
qt(0.125, df = 25, lower.tail = FALSE)
```

![image](https://user-images.githubusercontent.com/100523471/235473703-107c6a4b-c069-44c2-addc-40693b06818d.png)

Dalam program di atas, fungsi `qt()` digunakan untuk mencari nilai t-score pada distribusi t-Student dengan `25 derajat` kebebasan yang memiliki `luasan 0.125` satuan persegi di bawah kurva distribusi dan di sebelah kanan t-score tersebut. Oleh karena itu, parameter `df = 25` digunakan untuk menentukan derajat kebebasan, sedangkan `lower.tail = FALSE` digunakan untuk menghitung luasan di atas nilai t-score tersebut. Output yang dihasilkan dari fungsi ini adalah nilai t-score yang memiliki luasan 0.125 satuan persegi di atasnya pada distribusi t-Student dengan 25 derajat kebebasan.

**5g.)** **Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `qt()`, yang merupakan fungsi untuk menghitung nilai t-score dengan memasukkan luasan di bawah kurva distribusi t-Student dengan derajat kebebasan tertentu. Fungsi `abs()` digunakan untuk mengembalikan nilai absolut dari suatu bilangan.

```r
# g. Nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut
t_score_right <- qt(0.25 + (0.75 / 2), df = 11, lower.tail = FALSE)
t_score_left <- qt(0.25 + (0.75 / 2), df = 11, lower.tail = TRUE)
t_score_right - abs(t_score_left)
```

![image](https://user-images.githubusercontent.com/100523471/235473755-892e2af3-30b6-4181-b60b-409ffc3c3afb.png)

Dalam program di atas, `qt()` digunakan untuk mencari nilai t-score yang memiliki luasan kumulatif 0,25 + (0,75 / 2) = 0,625 di sebelah kanan kurva distribusi t-Student dengan derajat kebebasan 11 `(df = 11)`. Kemudian, fungsi `qt()` juga digunakan untuk mencari nilai t-score yang memiliki luasan kumulatif 0,25 + (0,75 / 2) = 0,625 di sebelah kiri kurva distribusi t-Student dengan derajat kebebasan 11 `(df = 11)`. Setelah itu, nilai t-score di sebelah kanan kurva dikurangi dengan nilai t-score di sebelah kiri kurva yang sudah diubah menjadi nilai positif menggunakan fungsi `abs()`. Hal ini dilakukan untuk mencari nilai t-score yang memiliki luasan kumulatif 0,75 di antara t-score tersebut dan negatif dari nilai t-score tersebut.

**5h.)** **Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?**

Soal ini menerapkan konsep distribusi T-Student. Fungsi yang digunakan adalah `qt()`, yang merupakan fungsi untuk menghitung nilai t-score dengan memasukkan luasan di bawah kurva distribusi t-Student dengan derajat kebebasan tertentu. Fungsi `abs()` digunakan untuk mengembalikan nilai absolut dari suatu bilangan.

```r
# h. Nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut
t_score_right <- qt(0.0333 / 2, df = 23, lower.tail = FALSE)
t_score_left <- qt(0.0333 / 2, df = 23, lower.tail = TRUE)
abs(t_score_left) + t_score_right
```

![image](https://user-images.githubusercontent.com/100523471/235473800-d1e1917d-6529-4edd-930c-e6e9c3f7dc08.png)

Dalam program di atas, fungsi `qt()` digunakan untuk mencari nilai t-score untuk luasan di bagian ekor kanan dan kiri kurva. `qt()` menerima tiga parameter yaitu probabilitas, derajat kebebasan, dan argumen `lower.tail` yang menentukan bagian mana dari distribusi yang ingin dicari. Jika `lower.tail` diatur sebagai `TRUE`, maka fungsi akan menghitung nilai t-score di bagian ekor kiri, sedangkan jika diatur sebagai `FALSE`, maka fungsi akan menghitung nilai t-score di bagian ekor kanan. Selanjutnya, nilai absolut dari t-score di bagian ekor kiri dihitung dengan fungsi `abs()`. Terakhir, nilai t-score di bagian ekor kanan ditambah dengan nilai absolut dari t-score di bagian ekor kiri untuk mendapatkan nilai t-score yang diinginkan. Output dari fungsi ini akan memberikan nilai t-score untuk distribusi t-Student dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut.
