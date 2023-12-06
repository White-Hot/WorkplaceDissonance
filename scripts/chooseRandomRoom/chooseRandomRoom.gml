if(instance_exists(obj_MASTERcon))
{
if (obj_MASTERcon.QADone = true && obj_MASTERcon.FlatPackDone = true && obj_MASTERcon.TheChaseDone = true && obj_MASTERcon.ChoicesDone = true && obj_MASTERcon.BreakRoomDone = true)
{
	obj_MASTERcon.EndOn = true;
	/*if (room = VisNov) || (room = VisOut)
	{
	alarm[2] =3600;
	return;
	}
	
		if (room = FlatPackW) 
	{
	alarm[2] =1200;
	return;
	}
		
		if (room = FlatPackL) 
	{
	alarm[2] =1800;
	return;
	}
	
		if (room = BreakRoomWin) 
	{
	alarm[2] =2100;
	return;
	}
	
		if (room = BreakRoomLoose) 
	{
	alarm[2] = 4200;
	return;
	}
	
		if (room = ConBest) 
	{
	alarm[2] = 900;
	return;
	}
	
			if (room = ConWin) 
	{
	alarm[2] = 600;
	return;
	}
	
			if (room = ConLose)  || (room = ConPoor) 
	{
	alarm[2] = 1200;
	return;
	}
	*/
	
}
}

randomize(); // Set a new random seed based on system time
var roomIndices = ds_list_create();
ds_list_add(roomIndices, "TheChase01");
ds_list_add(roomIndices, "BreakRoom1");
ds_list_add(roomIndices, "ConIntro");
ds_list_add(roomIndices, "FlatPackStart");
ds_list_add(roomIndices, "visNovIn");
var chosenRoomIndex = -1;

if (instance_exists(obj_MASTERcon)) {
    if (obj_MASTERcon.QADone == true) {
        var index = ds_list_find_index(roomIndices, "ConIntro");
        if (index != -1) {
            ds_list_delete(roomIndices, index);
        }
    }
    if (obj_MASTERcon.FlatPackDone == true) {
        var index = ds_list_find_index(roomIndices, "FlatPackStart");
        if (index != -1) {
            ds_list_delete(roomIndices, index);
        }
    }
    if (obj_MASTERcon.BreakRoomDone == true) {
        var index = ds_list_find_index(roomIndices, "BreakRoom1");
        if (index != -1) {
            ds_list_delete(roomIndices, index);
        }
    }
    if (obj_MASTERcon.ChoicesDone == true) {
        var index = ds_list_find_index(roomIndices, "visNovIn");
        if (index != -1) {
            ds_list_delete(roomIndices, index);
        }
    }
    if (obj_MASTERcon.TheChaseDone == true) {
        var index = ds_list_find_index(roomIndices, "TheChase01");
        if (index != -1) {
            ds_list_delete(roomIndices, index);
        }
    }
}

if (ds_list_size(roomIndices) > 0) {
    var arrLen = ds_list_size(roomIndices);
    for (var i = 0; i < arrLen; i++) {
        var j = irandom_range(i, arrLen - 1);
        var temp = roomIndices[| i];
        roomIndices[| i] = roomIndices[| j];
        roomIndices[| j] = temp;
    }

    chosenRoomIndex = roomIndices[| 0];
    ds_list_delete(roomIndices, 0);
}

ds_list_destroy(roomIndices);

return chosenRoomIndex;
