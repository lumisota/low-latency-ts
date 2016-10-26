import sys
import xml.etree.ElementTree as ET

print ET.parse(sys.argv[1]).getroot().attrib["docName"]