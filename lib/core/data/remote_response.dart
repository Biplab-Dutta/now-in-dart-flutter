sealed class RemoteResponse<T> {
  const RemoteResponse();
}

class NoConnectionRemoteResponse<T> extends RemoteResponse<T> {
  const NoConnectionRemoteResponse();
}

class NotModifiedRemoteResponse<T> extends RemoteResponse<T> {
  const NotModifiedRemoteResponse();
}

class WithNewDataRemoteResponse<T> extends RemoteResponse<T> {
  const WithNewDataRemoteResponse(this.data);

  final T data;
}
