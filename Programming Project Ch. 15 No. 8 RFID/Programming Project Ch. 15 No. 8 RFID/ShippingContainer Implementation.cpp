#include <iostream>
#include "ShippingContainer.h"

using namespace std;

ShippingContainer::ShippingContainer() : ID(0)
{

}
ShippingContainer::ShippingContainer(int ID) : ID(ID)
{

}
int ShippingContainer::getID() const
{
	return ID;
}
void ShippingContainer::setID(int newID)
{
	ID = newID;
}
