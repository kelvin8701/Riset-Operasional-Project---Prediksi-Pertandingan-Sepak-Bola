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

Untuk menggunakan kedua machine learning di atas kami menggunakan aplikasi Orange. Menggunakan aplikasi Orange pertama kita menginput dataset yang kami unduh dari Kaggle. Kemudian kumpulan data tersebut tidak bisa langsung disambungkan ke machine learning sehingga kami perlu memisahkan antara home score dan away score. Setelah dipisahkan menggunakan select column, kemudian kami menghubugnkannya dengan metode machine learning kami yaitu Linear Regression dan SVM. Setelah data disambungkan ke metode machine learning, kami menyambungkan hasil train data di machine learning ke prediction sehingga hasilnya adalah home_model dan away_model prediksi dari tiap machine learning. Kemudian untuk melihat performance dari kedua machine learning tersebut kami menghubungakan data hasil select column kami dan metode machine learning ke Test and Score sehingga dapat terlihat MSE, RMSE, MAE, dan R2 dari tiap metode machine learning yang kami gunakan. Kemudian Kami menghubungkannya ke data tabel dan kemudian menyimpannya yang nantinya data tabel tersebut akan di visualisasikan melalui R-Shiny.

## Performance - Evaluasi

MSE atau Mean Squared Error digunakan untuk mendapatkan informasi seberapa dekat garis regresi dengan sebuah titik, dilakukan dengan cara mengambil jarak atau error dari titik kepada garis regresi lalu dikuadratkan dengan tujuan untuk menghilangkan angka negatif.

RMSE atau Root Mean Square Error adalah Standard Deviation dari Residual yang merupakan pengukuran titik data kepada garis regresi, atau dengan kata lain Root Mean Square Error adalah pengukuran dari penyebaran dari Residual atau seberapa padat data disekitar garis regresi.

MAE atau Mean Absolute Error adalah rata rata dari perbedaan antara nilai yang terukur dengan nilai aslinya.

R2 digunakan untuk mencari tahu berapa banyak Data Points yang berada dalam dalam garis persamaan regresi.

Pengaturan yang digunakan saat membuat model:


<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/LinearRegressionOption.PNG" width="500">

Berdasarkan hasil perhitungan yang dilakukan melalui orange, nilai dari MSE, RMSE, MAE, R2 yang didapat kan adalah sebagai berikut ini :

### Home Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/Performance%20Home%20Model.png" width="500">

Bisa kita ketahui dari data MSE, RMSE, MAE, R2 yang didapat diatas, pada Home Model menggunakan metode machine learning linear regression mendapatkan Mean Squared Error sebesar 2.954, Root Mean Square Error yang didapat adalah 1.719, Mean Absolute Error yang didapat 1.250, dan R2 yang didapat adalah 0.038, sedangkan dengan metode machine learning SVM mendapatkan Mean Squared Error sebesar 13.652, Root Mean Square Error yang didapat adalah 3.695, Mean Absolute Error yang didapat 3.430, dan R2 yang didapat adalah -3.446, dapat dilihat dari Mean Square Error angka yang didapat dari metode machine learning Linear Regression jauh lebih kecil dibandingkan dengan menggunakan metode machine learning SVM, berdasarkan pengertian dari Mean Squared Error semakin kecil angka yang didapat maka semakin dekat garis dengan sebuah titik, oleh karena itu pada kasus ini menggunakan metode machine learning Linear Regression lebih baik dari pada metode machine learning SVM karena semua hasil yang didapatkan lebih kecil.

### Away Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/Performance%20Away%20Model.png" width="500">

Menurut data yang didapat pada Away Model menggunakan metode machine learning linear regression mendapatkan Mean Squared Error sebesar 1.872, Root Mean Square Error yang didapat adalah 1.368, Mean Absolute Error yang didapat 0.980, dan R2 yang didapat adalah 0.049, sedangkan dengan metode machine learning SVM mendapatkan Mean Squared Error sebesar 9.864, Root Mean Square Error yang didapat adalah 3.141, Mean Absolute Error yang didapat 2.932, dan R2 yang didapat adalah -4.011, sama seperti pada Home Model dapat dilihat dari Mean Square Error angka yang didapat dari metode machine learning Linear Regression juga jauh lebih kecil dibandingkan dengan menggunakan metode machine learning SVM, oleh karena itu pada kasus ini menggunakan metode machine learning Linear Regression lebih baik dari pada metode machine learning SVM karena semua hasil yang didapatkan lebih kecil.

## Prediksi-Model

### Home Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/Prediksi%20Home%20Model.png" width="800">

### Away Model

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/Prediksi%20Away%20Model.png" width="800">

Tabel diatas menunjukkan data data yang digunakan untuk melakukan prediksi beserta dengan hasil prediksi skor yang didapatkan dengan menggunakan proses machine learning Linear Regression.

## Hasil (R-Shiny)

### Scatter Plot

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/RShiny%20Scatter%20Plot.png" width="1000">

Pada gambar di atas terdapat persebaran titik pada away model dan home model dengan sumbu x merepresentasikan Home model dan sumbu y merepresentasikan away model. Persebaran titik pada scatter plot di atas menunjukan skor ketika sebuah tim sepak bola melakukan perandingan kandang dan tandang. Dapat terlihat dari gambar bahwa persebaran data lebih banyak kemenangan terjadi ketika sebuah tim bermain di kandang namun ada juga pertandingan dimana tim yang bermain di tandang menang jauh melwan tim kandang. Dalam scatter plot ini tidak bisa mendeteksi tim apa yang menang dan kalah namun scatter plot ini gabungan dari semua data yang ada.

### Tabel

<img src="https://github.com/kelvin8701/Riset-Operasional-Project---Prediksi-Pertandingan-Sepak-Bola/blob/main/Images/RShiny%20Table.png" width="1000">

Pada tabel di bawah ini ditampilkan data dari setiap tim yang bertanding dan bagaimana prediksi dari skor kandang dan tandang dari sebuah pertandingan. Dalam tabel ini juga terdapat fitur untuk mencari spesifik tim mana ataupun turnamen mana. Dalam tabe juga dapat dipilih untuk data mana yang ingin ditampilkan dan tidak ingin di tampilkan dan juga bisa di urutkan data berdasarkan kolom apa.

## Referensi

https://medium.com/swlh/predictive-modelling-using-linear-regression-e0e399dc4745#:~:text=Linear%20regression%20is%20one%20of,given%20predictor%20variable(s).
https://dhirajkumarblog.medium.com/top-4-advantages-and-disadvantages-of-support-vector-machine-or-svm-a3c06a2b107
https://www.analyticsvidhya.com/blog/2017/09/understaing-support-vector-machine-example-code/
https://shiny.rstudio.com/articles/datatables.html

