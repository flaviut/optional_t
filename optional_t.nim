import typetraits

type
  OptionType* {.pure.} = enum
    None, Some  # Order is important: unless otherwise specified, a value is None
  Option*[T] = object
    kind: OptionType
    val: T

converter toBool*[T](self: Option[T]): bool =
  ## Can be used as
  ##
  ##     if myOption:
  ##       discard myOption.get
  return self.kind == OptionType.Some

proc Some*[T](val: T): Option[T] =
  result.val  = val
  result.kind = OptionType.Some
  when compiles(val != nil):
    assert result.val != nil

proc None*[T](): Option[T] =
  result.kind = OptionType.None

proc isSome*[T](self: Option[T]): bool = ( self.kind == OptionType.Some )
proc isNone*[T](self: Option[T]): bool = ( self.kind == OptionType.None )

proc unsafeGet*[T](self: Option[T]): T = ( self.val )
proc get*[T](self: Option[T]): T = 
  if self.isSome:
    return self.unsafeGet
  else:
    raise newException(FieldError, "Cannot fetch value from a None")

proc map*[T, R](self: Option[T], oper: proc (input: T): R): Option[R] =
  if self:
    return Some(oper(self.unsafeGet))
  else:
    return None[R]()

proc `$`*[T](self: Option[T]): string =
  if self.isSome:
    when compiles(self.val != nil):
      assert self.val != nil
    result = "Some(" & $self.get & ")"
  else:
    result = "None[" & T.name & "]"

proc `==`*[T](a, b: Option[T]): bool =
  return (a.isSome and b.isSome and a.unsafeGet == b.unsafeGet) or
         (a.isNone and b.isNone)
