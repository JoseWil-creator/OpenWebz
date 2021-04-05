#include <iostream>
#include<string>
#include "ManualShippingContainer.h"

using namespace std;

ManualShippingContainer::ManualShippingContainer() : ShippingContainer (), manifest("")
{

}
void ManualShippingContainer::setManifest(string newManifest)
{
	manifest = newManifest;
}
string ManualShippingContainer::getManifest()
{
	return manifest;
}

