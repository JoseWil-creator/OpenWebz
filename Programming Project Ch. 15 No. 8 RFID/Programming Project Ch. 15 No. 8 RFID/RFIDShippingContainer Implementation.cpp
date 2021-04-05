#include <iostream>
#include <vector>
#include <string>
#include "RFIDShippingContainer.h"

using namespace std;

RFIDShippingContainer::RFIDShippingContainer() : ShippingContainer(), List(0), Numeration(0)
{

}

void RFIDShippingContainer::add(string items)
{

	for (int i = 0; i < List.size(); i++)
	{
		if (items == List[i])
		{

			Numeration[i]++;
				return;
		}

	}
	List.push_back(items);
	Numeration.push_back(0); // I don't know why but with Numeration.push_back(1); it adds 1 to the output. Although output is correct.
}

string RFIDShippingContainer::getManifest()
{
	
	string manifest;
	string OrList;
	for (int i = 0; i < List.size(); i++)
	{
		OrList = to_string(Numeration[i]);
		manifest = OrList + List[i];
	}
	return manifest;
}