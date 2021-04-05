
#ifndef RFIDSHPPPINGCONTAINER_H

# define RFIDSHIPPINGCONTAINER_H
#include <iostream>
#include <string>
#include <vector>
#include "Shippingcontainer.h"
using namespace std;

class RFIDShippingContainer : public ShippingContainer
{
public:
	RFIDShippingContainer();
	void add(string items);
	string getManifest();

	vector <string> List;
	vector <int> Numeration;
};

#endif 