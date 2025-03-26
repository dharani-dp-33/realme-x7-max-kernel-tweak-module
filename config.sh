##########################################################################################
#
# Configuration for the Magisk module
#
##########################################################################################

# Set the module name
MODID=your_module_id

# Set the module version
VERSION=1.0

# Set the module version code
VERSIONCODE=100

# Set the module author
AUTHOR="Your Name"

# Set the module description
DESCRIPTION="Magisk module to switch between performance, battery, and boost modes."

# Define installation variables
AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

# Import functions
. $MODPATH/common/service.sh
