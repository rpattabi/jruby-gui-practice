
require 'tray'
require 'screenshot'

app = TrayApp.new('Deskshot')

app.item('Take Screenshot') { Screenshot.capture }
app.item('Exit') { java.lang.System::exit(0) }

app.run
