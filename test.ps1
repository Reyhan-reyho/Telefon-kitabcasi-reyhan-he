#include <stdio.h>
#include <string.h>

struct Kontakt {
    char ad[30];
    char nomre[20];
};

int main() {
    struct Kontakt k[50];
    int say = 0;
    int secim;
    char axtar[30];

    while (1) {
        printf("\n--- Telefon Kitabcasi ---\n");
        printf("1. Elave et\n");
        printf("2. Goster\n");
        printf("3. Axtar\n");
        printf("4. Cixis\n");
        printf("Secim: ");
        scanf("%d", &secim);

        if (secim == 1) {
            printf("Ad: ");
            scanf("%s", k[say].ad);
            printf("Nomre: ");
            scanf("%s", k[say].nomre);
            say++;
            printf("Elave edildi!\n");
        }

        else if (secim == 2) {
            printf("\n--- Kontaktlar ---\n");
            for (int i = 0; i < say; i++) {
                printf("%d) %s - %s\n", i+1, k[i].ad, k[i].nomre);
            }
        }

        else if (secim == 3) {
            printf("Axtarilan ad: ");
            scanf("%s", axtar);

            int tapildi = 0;

            for (int i = 0; i < say; i++) {
                if (strcmp(k[i].ad, axtar) == 0) {
                    printf("Tapildi: %s - %s\n", k[i].ad, k[i].nomre);
                    tapildi = 1;
                    break;
                }
            }

            if (tapildi == 0) {
                printf("Tapilmadi.\n");
            }
        }

        else if (secim == 4) {
            printf("Proqram bitdi.\n");
            break;
        }

        else {
            printf("Yanlis secim!\n");
        }
    }

    return 0;
}