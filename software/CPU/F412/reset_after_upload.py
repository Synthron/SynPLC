Import('env')

env.Prepend(
  UPLOADERFLAGS=["--run"]
)