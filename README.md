iOS version - 13.1

**Description:**
In certain conditions UITextView becomes blank when dismissing view controller.

**Steps:**
1. Create view controller with UITextView. Set attributed text with specified 'NSAttributedString.Key.font' attribute to the text view. It should be fairly long, for example: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ".
2. Modally present created view controller, i.e. by 'func present(: animated: completion:)' method of UIViewController.
3. Dismiss view controller by calling 'dismiss(animated: true)' on presented view controller.

**Actual:**
UITextView appears blank, i.e. without text, during dismiss animation view controller. This is not apparent with default animation speed, but effect very visible after turning on Slow Animations in Simulator.

**Expected:**
Text is visible. As on iOS 12.

[Video](./UITextView_iOS13_issue.mp4)
