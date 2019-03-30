from org.csstudio.opibuilder.scriptUtil import ConsoleUtil
from org.csstudio.opibuilder.scriptUtil import PVUtil
import WidgetUtil
from org.eclipse.jface.dialogs import MessageDialog

value = PVUtil.getString(pvs[0])


if value == "":
	MessageDialog.openWarning(None, "Warning", "Field is empty!")    
	flag = 0
else:
	flag = 1
	

if flag ==1:
	StringToSend = value

	PVUtil.writePV("LLRF_USER:CavitySimulator:StringToSendIDN", StringToSend)
