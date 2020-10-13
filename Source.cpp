
#include "Header.h"


float CVHinhVuong(float dai, float rong)
{
	return (dai+rong)*2;
}
float DTHinhVuong(float dai, float rong)
{
	return (dai*rong);
}
float CVHinhChuNhat(float dai, float rong)
{
	return (dai + rong) * 2;
}
float DTHinhChuNhat(float dai, float rong)
{
	return dai * rong;
}
float CVHinhTron(float bankinh)
{
	return 2*3.14*bankinh;
}
float DTHinhTron(float bankinh)
{
	return 3.14*bankinh*bankinh;
}
int randomCong ()
{
	int a = rand() % 101;
	int b = rand() % 101;
	cout << "\na= " << a;
	cout << "\nb= " << b;
	return a+b;
	
	
}
int randomTru ()
{
	int a = rand() % 101;
	int b = rand() % 101;
	cout << "\na= " << a;
	cout << "\nb= " << b;
	return a-b;
}