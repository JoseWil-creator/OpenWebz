#ifndef SHIPPINGCONTAINER_H
#define SHIPPINGCONTAINER_H
#include <iostream>
#include <string>
using namespace std;

class ShippingContainer
{
public:

	ShippingContainer();
	ShippingContainer(int ID);
	int getID() const;
	void setID(int newID);
	virtual string getManifest() { return manifest; }
	virtual void setManifest(string mani) {}
	virtual void add(string mani) {}

protected:
	string manifest;
	int ID;
};
#endif
