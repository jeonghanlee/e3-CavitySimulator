from org.csstudio.opibuilder.scriptUtil import ConsoleUtil
from org.csstudio.opibuilder.scriptUtil import PVUtil
from org.csstudio.opibuilder.scriptUtil import ColorFontUtil
import WidgetUtil

lvl2 = PVUtil.getString(pvs[0])
lvl3 = PVUtil.getString(pvs[1])

label_name = "Combo_2"

ATT_array = ["VM1", "VM2", "VM3", "VM4", "VM5", "VM6", "VM7", "ADC"]
GATE_array = ["VM1", "VM2", "VM3", "VM4", "VM5", "VM6", "VM7"]
CONST_array = ["VM1", "VM2", "VM3", "VM4", "VM5", "VM6", "VM7"]
MUX_array = ["VM1", "VM2", "VM3", "VM4", "VM5", "VM6", "VM7"]
SYNC_array = ["MODE", "DELAY", "ON", "OFF"]
AWG_array = ["SIN", "TRAF", "TRAR", "TRAC", "FALL", "RIS", "SQON", "SQOFF", "TRIG", "OUT"]
AMP_array = ["MODE", "Q", "GAIN"]
MODEX_array = ["Q", "GAIN", "DETU"]

temp = lvl2
if temp == "ATT":
	WidgetUtil.setItems(display, label_name, ATT_array)
elif temp == "GATE":
	WidgetUtil.setItems(display, label_name, GATE_array)
elif temp == "CONSTI" or temp == "CONSTQ":
	WidgetUtil.setItems(display, label_name, CONST_array)
elif temp == "MUX":
	WidgetUtil.setItems(display, label_name, MUX_array)
elif temp == "AWG":
	WidgetUtil.setItems(display, label_name, AWG_array)
elif temp == "SYNC":
	WidgetUtil.setItems(display, label_name, SYNC_array)
elif "MOD" in temp:
	WidgetUtil.setItems(display, label_name, MODEX_array)
elif temp == "AMP":
	WidgetUtil.setItems(display, label_name, AMP_array)