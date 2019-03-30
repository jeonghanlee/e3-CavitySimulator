from org.csstudio.opibuilder.scriptUtil import ConsoleUtil
from org.csstudio.opibuilder.scriptUtil import PVUtil
import WidgetUtil
from org.eclipse.jface.dialogs import MessageDialog

meas = PVUtil.getString(pvs[0])
temp = PVUtil.getString(pvs[1])
value = PVUtil.getString(pvs[2])


if meas=="" or temp =="" or value == "":
	MessageDialog.openWarning(None, "Warning", "At least one field is empty!")    
	flag = 0
else:
	flag = 1
	
if flag ==1:
	StringToSend = meas+":"+temp+":"+value
	PVUtil.writePV("LLRF_USER:CavitySimulator:StringToSendTemp", StringToSend)
