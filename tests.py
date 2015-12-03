import nose
from main import *

def test_freeTimes():
#Test our get free times function with an arbitrary busy times obj
#This assures we can expect the same algorithmic outcome from any busy times
    testBusy = [{'start': '2015-11-09T09:30:00Z', 'end': '2015-11-09T16:30:00Z'}, {'start': '2015-11-11T14:00:00Z', 'end': '2015-11-11T22:30:00Z'}, {'start': '2015-11-12T09:00:00Z', 'end': '2015-11-12T10:30:00Z'}]
    assert (getFreeTime(testBusy))

#Incase there are no schedule conflicts and we have no busy times
    testBusy = [{}]
    assert (getFreeTime(testBusy))

#Case where our calendar is completely full for range: 11/01/2015 - 11/07/2015
    testBusy = [{'start': '2015-11-01T00:00:00Z', 'end': '2015-11-07T11:45:00Z'}]
    assert (getFreeTime(testBusy))

