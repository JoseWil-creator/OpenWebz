#include <iostream>
#include "ShippingContainer.h"
#include "ManualShippingContainer.h"
#include "RFIDShippingContainer.h"
#include <vector>
#include <string>
using namespace std;

int main()
{
 ShippingContainer * ArrayOfShCon[7];
	
	ArrayOfShCon[0] = new ManualShippingContainer();
	ArrayOfShCon[1] = new ManualShippingContainer();
	ArrayOfShCon[2] = new ManualShippingContainer();
	ArrayOfShCon[3] = new RFIDShippingContainer();
	ArrayOfShCon[4] = new RFIDShippingContainer();
	ArrayOfShCon[5] = new RFIDShippingContainer();
	
	ArrayOfShCon[0]->setID(100);
	ArrayOfShCon[0]->setManifest("1000 diapers.");

	ArrayOfShCon[1]->setID(200);
	ArrayOfShCon[1]->setManifest("1000 candy bars. 500 toilet paper.");

	ArrayOfShCon[2]->setID(300);
	ArrayOfShCon[2]->setManifest("500 books.");
	
	ArrayOfShCon[3]->setID(400);
	ArrayOfShCon[3]->add("2 apples 1 cookies.");

	ArrayOfShCon[4]->setID(500);
	ArrayOfShCon[4]->add("2 pineapple  2 pears.");

	ArrayOfShCon[5]->setID(600);
	ArrayOfShCon[5]->add("3 chocolate bars.");

	for (int i = 0; i <= 5; i++)
	{
		cout << "Container " << ArrayOfShCon[i]->getID() << " Contains: " << ArrayOfShCon[i]->getManifest() << endl;
	}

	system ("pause");
	return 0;
}

