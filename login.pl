% Dataset: username and password
user(layla, pass678).
user(reem, helloworld03).

login :-
    login_attempts(3).

login_attempts(0):-
    write('Sorry, you have exceeded the maximum number of attempts. Please try again later.').

login_attempts(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (
        user(Username, Password)
        -> write('Login Successful'),
        nl;
        write('Login Unsuccessful'),
        nl,
        Remaining is Attempts - 1,
        login_attempts(Remaining)
    ).
