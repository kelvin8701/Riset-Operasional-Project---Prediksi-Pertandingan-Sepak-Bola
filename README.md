# Riset Operasional Project - Prediksi Pertandingan Sepak Bola
### Anggota dan Kontribusi
    - Elbert Tanata         : Visualisasi - RShiny
    - Hansen Firdianto      : Visualisasi - RShiny
    - Hansen Layanardi      : Laporan GitHub, Machine Learning (SVM)
    - jason Arthur          : Machine Learning (Linear Regression)
    - Kelvin Wiriyatama     : Laporan GitHub, Machine Learning (SVM)
## Metode Machine Learning- Linear Regression

Pada kasus prediksi pertandingan sepak bola, kelompok kami menggunakan metode machine learning Linear Regression. Linear Regression adalah salah satu dari teknik _predictive modelling_, model ini dapat digunakan untuk memprediksi nilai dari target bedasarkan dari variabel yang diberikan. Linear Regression direpresentasikan dengan persamaan 𝑌 = 𝑎 + 𝑏𝑋 + 𝑒, dimana a adalah perpotongan, b adalah gradien dari garis dan e adalah istilah error. Kami memutuskan untuk menggunakan teknik pemodelan ini karena target kami adalah nilai numerik. 

Model lain yang mungkin kami gunakan adalah SVM yang dapat digunakan jika ada pemisah yang jelas antar kelas target, dimana kasus kami tidak memilikinya. Akan tetapi kami tetap mencoba menggunakan metode SVM untuk membandingan dengan metode Linear Regression. 



SVM memiliki kelemahan yang membuatnya tidak cocok digunakan untuk prediski model kami, karena data kami mempunyai banyak fitur yang membuat prediksi model ini menghasilkan performa yang kurang baik.

## Performance - Evaluasi

MSE atau Mean Squared Error digunakan untuk mendapatkan informasi seberapa dekat garis regresi dengan sebuah titik, dilakukan dengan cara mengambil jarak atau error dari titik kepada garis regresi lalu dikuadratkan dengan tujuan untuk menghilangkan angka negatif.

RMSE atau Root Mean Square Error adalah Standard Deviation dari Residual yang merupakan pengukuran titik data kepada garis regresi, atau dengan kata lain Root Mean Square Error adalah pengukuran dari penyebaran dari Residual atau seberapa padat data disekitar garis regresi.

MAE atau Mean Absolute Error adalah rata rata dari perbedaan antara nilai yang terukur dengan nilai aslinya.

R2 digunakan untuk mencari tahu berapa banyak Data Points yang berada dalam dalam garis persamaan regresi.

Berdasarkan hasil perhitungan yang dilakukan melalui orange, performance yang ditunjukkan oleh hasil yang kami terima adalah metode machine learning Linear Regression mendapatkan hasil yang lebih baik dibandingkan dengan metode machine learning SVM, melalui gambar tabel ini nilai dari MSE, RMSE, MAE, R2 yang didapat kan adalah

### Home Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Performance%20Home%20Model.png" width="500">

### Away Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Performance%20Away%20Model.png" width="500">

## Prediksi-Model



## Hasil (R-Shiny)

### Scatter Plot

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/RShiny%20Scatter%20Plot.png" width="1000">

### Tabel

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/RShiny%20Table.png" width="1000">
