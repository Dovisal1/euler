#include <stdio.h>
#include <time.h>

int main()
{
	int sundays = 0;
	time_t rawtime;
	time(&rawtime);
	struct tm *fom = localtime(&rawtime);

	for (int year = 1901; year <= 2000; year++) {
		for (int month = 1; month <= 12; month ++) {
			fom->tm_year = year - 1900;
			fom->tm_mon = month - 1;
			fom->tm_mday = 1;
			
			mktime(fom);

			if (fom->tm_wday == 0)
				sundays++;
		}
	}

	printf("%d\n", sundays);
}


