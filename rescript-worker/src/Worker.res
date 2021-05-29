type t

@new
external new: string => t = "Worker"

@new
external newWithOptions: (string, {..}) => t = "Worker"
