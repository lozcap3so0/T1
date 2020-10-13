/*
Project BT GIT
Xay dung chuong trinh ToanCap1.
Version 1.0.0. 4 phep toan co ban: Nhap vao 2 so se xuat ra ket qua 4 phep toan +,-,*,/ (lam tren nhanh master)
Version 2.0.0. Tinh chu vi va dien tich 3 hinh: vuong, chu nhat, tron (phan ra lam 1 hoac 2 nhanh)
Version 3.0.0. Luyen tap phep cong. Random 2 so nguyen tu 0 den 100. Hoi tong 2 so do la bao nhieu. Sau khi nguoi dung nhap vao thi kiem tra xem ket qua co dung khong? (1 nhanh moi)
Version 3.1.0. Luyen tap phep tru. Random 2 so nguyen tu 0 den 100. Hoi hieu 2 so do la bao nhieu. Sau khi nguoi dung nhap vao thi kiem tra xem ket qua co dung khong? (1 nhanh moi)
*/

#include "Header.h"

void main()
{
	int a, b;

	
	int tong = 0;
	cout << "nhap a";
	cin >> a;
	cout << "nhap b";
	cin >> b;
	tong = a + b;
	cout << "Tong = " << tong;
	int hieu = 0;
	hieu = a - b;
	cout << "hieu = " << hieu;
	int tich = 1;
	tich = a * b;
	cout << "tich = " << tich;
	int thuong = 1;
	thuong = a / b;
	cout << "thuong = " << thuong;

	

	float dai;
	float rong;
	cout<< "Nhap chieu dai: ";
	cin >>dai;
	cout << "Nhap chieu rong: ";
	cin >>rong;
	float bankinh;
	cout <<"nhap bankinh=";
	cin >>bankinh;


	cout << "Chu vi hinh vuong la: " << CVHinhVuong(dai,rong);
	cout << "Dien tich hinh vuong: " << DTHinhVuong(dai,rong);

	cout << "Chu vi hinh chu nhat la: " << CVHinhChuNhat(dai, rong);
	cout << "Dien tich hinh chu nhat la: " << DTHinhChuNhat(dai, rong);
	
	cout << "Chu vi hinh tron la: " << CVHinhTron(bankinh);
	cout << "Dien tich hinh tron la: " << DTHinhTron(bankinh);
	
		system("pause");
			return 0;
}