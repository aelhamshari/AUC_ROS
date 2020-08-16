#include <iostream>
#include <math.h>

using namespace std;


double f(double mu, double sigma2, double x)
{
  double prob = (exp(-(pow((x-mu),2))/(2*sigma2)))/(sqrt(2*M_PI*sigma2));
  return (prob);
}
int main(){
  cout << f(10.0,4.0,8.0) << endl;
  return 0;
}
