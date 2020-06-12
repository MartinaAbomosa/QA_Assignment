import time
import robot

# set up authentication info
def wait_for(timeout):

    timeout = robot.utils.timestr_to_secs(timeout)
    maxtime = time.time() + timeout
    while True:
        if time.time() > maxtime:
            break
        time.sleep(0.2)