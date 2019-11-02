
function rosconnect (ip)
    if ip == 0
        URI = "http://172.29.30.55:11311";%SIMULADOR
    elseif ip == 1
        URI = "http://172.29.30.176:11311";%ROBOT
    else
        URI = ip;%OTHER
    end
    IP_LOCAL_MACHINE = "172.29.29.59";

    rosshutdown()
    rosinit(URI,"NodeHost",IP_LOCAL_MACHINE);
    pause(0.5)
    display("CONECTED TO ROS")
end