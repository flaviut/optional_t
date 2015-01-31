import optional_t

converter option2val*[T](val: Option[T]): T =
  return val.get()
