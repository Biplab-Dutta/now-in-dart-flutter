sealed class RemoteResponse<T> {
  const RemoteResponse();
}

class NoConnectionRemoteResponse<T> extends RemoteResponse<T> {
  const NoConnectionRemoteResponse();
}

class UnModifiedRemoteResponse<T> extends RemoteResponse<T> {
  const UnModifiedRemoteResponse();
}

class ModifiedRemoteResponse<T> extends RemoteResponse<T> {
  const ModifiedRemoteResponse(this.data);

  final T data;
}
