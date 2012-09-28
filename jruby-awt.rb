#----------------------------------------------------------------
# Summary: Takes a screenshot of the desktop and saves to disk
#----------------------------------------------------------------

# this gives us direct access to Java classes in Ruby
include Java

# here we are importing Java classes, just like you might require 'yaml' or 'date'
import java.awt.Robot
import java.awt.Toolkit
import java.awt.Rectangle
import javax.imageio.ImageIO

# Taking the screenshot
# 1) Create a new instance of the Robot class
# 2) Use the Toolkit class to get the size of the screen
# 3) and pass those dimensions to the Robot instance for capture
robot     = Robot.new
toolkit   = Toolkit.get_default_toolkit
dim       = toolkit.get_screen_size
rectangle = Rectangle.new(0, 0, dim.get_width, dim.get_height)
image     = robot.create_screen_capture(rectangle)

# Save the file to disk
file = java::io::File.new('test.png')
ImageIO::write(image, "png", file)
