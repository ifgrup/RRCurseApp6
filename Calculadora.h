
#import <UIKit/UIKit.h>

@interface Calculadora : UIViewController {
    IBOutlet UITextField *display;
	double operando;
	enum operadores {
		SUMA, RESTA, MULTIPLICACION, DIVISION, IGUAL, NADA
	} operador;

}

-(IBAction) pulsacion:(id) sender;

@end
