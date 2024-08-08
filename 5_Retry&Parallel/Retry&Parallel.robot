*** Test Cases ***
Retry&Parallel
    #For retry:-
    # for retrying firstly install :- pip install robotframework-retryfailed
    # then use command :- robot --listener RetryFailed:1 <robot suite>
    # example:-    robot --listener RetryFailed:3 HandleAlerts.robot
    #For Parallel Run:-
    # for parallel firstly install :- pip install -U robotframework-pabot
    # then use command :- pabot --testlevelsplit [path to tests]
    # example:- pabot --testlevelsplit C:\Users\admin\Poject
    #For Parallel and Retrying:-
    # use combine both command:- pabot --testlevelsplit --listener RetryFailed:3 C:\Users\admin\Poject
    #adding implecit wait of 10 sec:Set Browser Timeout    20s
