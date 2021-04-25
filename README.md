# Riset Operasional Project - Prediksi Pertandingan Sepak Bola
### Anggota dan Kontribusi
    - Elbert Tanata / 01082190019            : Visualisasi - RShiny
    - Hansen Firdianto / 01082190003         : Visualisasi - RShiny
    - Hansen Layanardi / 01082190010         : Laporan GitHub, Machine Learning (SVM)
    - Jason Arthur / 01082190013             : Machine Learning (Linear Regression)
    - Kelvin Wiriyatama / 0108219002         : Laporan GitHub, Machine Learning (SVM)
## Metode Machine Learning- Linear Regression

Pada kasus prediksi pertandingan sepak bola, kelompok kami menggunakan metode machine learning Linear Regression. Linear Regression adalah salah satu dari teknik _predictive modelling_, model ini dapat digunakan untuk memprediksi nilai dari target bedasarkan dari variabel yang diberikan. Linear Regression direpresentasikan dengan persamaan 𝑌 = 𝑎 + 𝑏𝑋 + 𝑒, dimana a adalah perpotongan, b adalah gradien dari garis dan e adalah istilah error. Kami memutuskan untuk menggunakan teknik pemodelan ini karena target kami adalah nilai numerik. 

Model lain yang mungkin kami gunakan adalah SVM yang dapat digunakan jika ada pemisah yang jelas antar kelas target, dimana kasus kami tidak memilikinya. Akan tetapi kami tetap mencoba menggunakan metode SVM untuk membandingan dengan metode Linear Regression. SVM atau Support Vector Machine adalah metode machine learning yang bisa digunakan untuk classification dan regression, SVM membuat sebuah hyperplane atau sekumpulan hyperplane di ruang berdimensi tinggi atau tak hingga. Pada kasus kami, kami menemukan bahwa metode SVM memiliki kelemahan yang membuatnya tidak cocok digunakan untuk prediski model kami. Data kami mempunyai banyak fitur yang membuat prediksi model ini menghasilkan performa yang kurang baik.

## Performance - Evaluasi

MSE atau Mean Squared Error digunakan untuk mendapatkan informasi seberapa dekat garis regresi dengan sebuah titik, dilakukan dengan cara mengambil jarak atau error dari titik kepada garis regresi lalu dikuadratkan dengan tujuan untuk menghilangkan angka negatif.

RMSE atau Root Mean Square Error adalah Standard Deviation dari Residual yang merupakan pengukuran titik data kepada garis regresi, atau dengan kata lain Root Mean Square Error adalah pengukuran dari penyebaran dari Residual atau seberapa padat data disekitar garis regresi.

MAE atau Mean Absolute Error adalah rata rata dari perbedaan antara nilai yang terukur dengan nilai aslinya.

R2 digunakan untuk mencari tahu berapa banyak Data Points yang berada dalam dalam garis persamaan regresi.

Berdasarkan hasil perhitungan yang dilakukan melalui orange, nilai dari MSE, RMSE, MAE, R2 yang didapat kan adalah sebagai berikut ini :

### Home Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Performance%20Home%20Model.png" width="500">

bisa kita ketahui dari data MSE, RMSE, MAE, R2 yang didapat diatas, pada Home Model menggunakan metode machine learning linear regression mendapatkan Mean Squared Error sebesar 2.954, Root Mean Square Error yang didapat adalah 1.719, Mean Absolute Error yang didapat 1.250, dan R2 yang didapat adalah 0.038, sedangkan dengan metode machine learning SVM mendapatkan Mean Squared Error sebesar 13.652, Root Mean Square Error yang didapat adalah 3.695, Mean Absolute Error yang didapat 3.430, dan R2 yang didapat adalah -3.446, dapat dilihat dari Mean Square Error angka yang didapat dari metode machine learning linear regression jauh lebih kecil dibandingkan dengan menggunakan metode machine learning SVM, berdasarkan pengertian dari Mean Squared Error semakin kecil angka yang didapat maka semakin dekat garis dengan sebuah titik, oleh karena itu pada kasus ini menggunakan metode machine learning linear regression lebih baik dari pada metode machine learning SVM karena semua hasil yang didapatkan lebih kecil.

### Away Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Performance%20Away%20Model.png" width="500">

menurut data yang didapat pada Away Model menggunakan metode machine learning linear regression mendapatkan Mean Squared Error sebesar 1.872, Root Mean Square Error yang didapat adalah 1.368, Mean Absolute Error yang didapat 0.980, dan R2 yang didapat adalah 0.049, sedangkan dengan metode machine learning SVM mendapatkan Mean Squared Error sebesar 9.864, Root Mean Square Error yang didapat adalah 3.141, Mean Absolute Error yang didapat 2.932, dan R2 yang didapat adalah -4.011, sama seperti pada Home Model dapat dilihat dari Mean Square Error angka yang didapat dari metode machine learning linear regression juga jauh lebih kecil dibandingkan dengan menggunakan metode machine learning SVM, oleh karena itu pada kasus ini menggunakan metode machine learning linear regression lebih baik dari pada metode machine learning SVM karena semua hasil yang didapatkan lebih kecil.

## Prediksi-Model

### Home Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Prediksi%20Home%20Model.png" width="800">

### Away Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Prediksi%20Away%20Model.png" width="800">

tabel diatas menunjukkan 

## Hasil (R-Shiny)

### Scatter Plot

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/RShiny%20Scatter%20Plot.png" width="1000">

### Tabel

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/RShiny%20Table.png" width="1000">
