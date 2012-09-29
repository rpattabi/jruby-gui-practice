require 'rubygems'
require 'java'
require 'swt'

include Java
import %w(Display Label Shell).map { |c| 'org.eclipse.swt.widgets.' + c }
import 'org.eclipse.swt.SWT'

display = Display.new
shell = Shell.new(display)

shell.set_size(200, 200)

label = Label.new(shell, SWT::BORDER)
label.set_location(30, 30)
label.set_size(100, 20)
label.set_text('Hello World!')

shell.open
display.sleep unless display.read_and_dispatch while !shell.disposed
display.dispose 
