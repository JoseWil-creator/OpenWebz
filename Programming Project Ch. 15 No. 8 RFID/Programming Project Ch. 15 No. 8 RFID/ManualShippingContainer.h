#ifndef MANUALSHIPPINGCONTAINER_H
#define MANUALSHIPPINGCONTAINER_H
#include <iostream>
#include <string>
#include "ShippingContainer.h"


using namespace std;

	class ManualShippingContainer : public ShippingContainer
{
public:

	ManualShippingContainer();
	void setManifest(string newManifest);
	string getManifest();
	string manifest;

};
#endif

