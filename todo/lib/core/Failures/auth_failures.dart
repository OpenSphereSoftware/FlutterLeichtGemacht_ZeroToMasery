

abstract class AuthFailure {}

class ServerFailure extends AuthFailure {}

class EmailAlreadyInUseFailure extends AuthFailure {}

class InvalidEmailAndPasswordCombinationFailure extends AuthFailure {}