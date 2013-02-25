class MainViewController < UIViewController

  def loadView
    self.view = UIView.new
  end

  def viewDidLoad
    @input_field = UITextField.alloc.initWithFrame([[0,0], [200,40]])

    @input_field.backgroundColor = UIColor.whiteColor
    @input_field.setBorderStyle UITextBorderStyleRoundedRect

    self.view.addSubview @input_field

    @action_button = UIButton.buttonWithType UIButtonTypeRoundedRect
  
    @action_button.setTitle "Greet me!", forState: UIControlStateNormal

    @action_button.frame = [[100,100],[100,50]]

    @action_button.addTarget(self, 
        action: :greet_user, 
        forControlEvents: UIControlEventTouchUpInside)

    self.view.addSubview @action_button

    def greet_user
      @alert_box = UIAlertView.alloc.initWithTitle("Greeting",
            message: "Hi #{@input_field.text}",
            delegate: nil,
            cancelButtonTitle: "Ok",
            otherButtonTitles:nil)

      @alert_box.show
      
    end
  end
end
