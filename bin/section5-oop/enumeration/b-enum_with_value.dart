enum StatusCode {
  success(200),
  noContent(204),
  unUsed(306),
  padRequest(400),
  unAuthorized(401),
  forbidden(403),
  notFound(404);

  final int code;

  const StatusCode(this.code);
}

int findCode(StatusCode statusCode) {
  //Switch best practice with switc
  switch (statusCode) {
    case StatusCode.success:
      return StatusCode.success.code;
    case StatusCode.noContent:
      return StatusCode.noContent.code;
    case StatusCode.unUsed:
      return StatusCode.unUsed.code;
    case StatusCode.padRequest:
      return StatusCode.padRequest.code;
    case StatusCode.unAuthorized:
      return StatusCode.unAuthorized.code;
    case StatusCode.forbidden:
      return StatusCode.forbidden.code;
    case StatusCode.notFound:
      return StatusCode.notFound.code;
  }
}

void main() {
  int code = findCode(StatusCode.forbidden);
  print(code);
}
