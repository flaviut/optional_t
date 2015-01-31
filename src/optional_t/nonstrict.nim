import optional_t

converter val2option*[T](val: T): Option[T] =
  return Some(val)

converter option2val*[T](val: Option[T]): T =
  return val.get()
