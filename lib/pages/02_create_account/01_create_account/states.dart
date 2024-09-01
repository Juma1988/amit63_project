class CreateAccountStates {}

class LoadingCreateAccountState extends CreateAccountStates {}

class SuccessCreateAccountState extends CreateAccountStates {
  final String? msg;

  SuccessCreateAccountState({this.msg});
}

class FailedCreateAccountState extends CreateAccountStates {
  final String? msg;

  FailedCreateAccountState({this.msg});
}
