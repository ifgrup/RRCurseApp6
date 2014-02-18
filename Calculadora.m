
#import "Calculadora.h"

@implementation Calculadora

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (IBAction) pulsacion:(id) sender {
	UIButton *boton = (UIButton*) sender;
    
	if ([boton.titleLabel.text isEqualToString: @"+"]) {
		operador = SUMA;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"-"]) {
		operador = RESTA;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"x"]) {
		operador = MULTIPLICACION;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"/"]) {
		operador = DIVISION;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"="]) {
		switch (operador) {
			case SUMA:
				display.text = [NSString stringWithFormat:@"%f",  operando + [[display text] doubleValue]];
				operando = 0;
				break;
			case RESTA:
				display.text = [NSString stringWithFormat:@"%f",  operando - [[display text] doubleValue]];
				operando = 0;
				break;
			case MULTIPLICACION:
				display.text = [NSString stringWithFormat:@"%f",  operando * [[display text] doubleValue]];
				operando = 0;
				break;
			case DIVISION:
				display.text = [NSString stringWithFormat:@"%f",  operando / [[display text] doubleValue]];
				operando = 0;
				break;
			default:
				display.text = @"";
				break;
		}
		operando = 0;
		operador = IGUAL;
	}
	else {
		if (operador != IGUAL)
		{
			[display setText: [[display text] stringByAppendingString:boton.titleLabel.text]];
		}
		else {
			[display setText: boton.titleLabel.text];
			operador = NADA;
		}
        
	}
}


@end
