module dfnames

using DataFrames

export snake_caser, camel_caser, paschal_caser, title_caser

function snake_caser(x)
    x = strip(x)
    x = replace(x, r"([a-z])([A-Z])" => s"\1_\2")
    x = replace(x, r"""[,.:;?!()]""" => "_")
    x = replace(x, r"_+" => "_")
    x = replace(x, r"\s+" => "_")
    x = replace(x, r"^_|_$" => "")
    x = lowercase(x)
    x
end

function camel_caser(x)
    x = strip(x)
    x = replace(x, r"""[,.:;?!()]""" => "_")
    x = replace(x, r"_+" => " ")
    x = replace(x, r"^_|_$" => "")
    x = replace(x, r"\s+" => " ")
    #x = titlecase(x)
    #x = replace(x, r"^[A-Z]" => lowercase)
    x = replace(x, r"\s[a-z]" => uppercase)
    x = replace(x, r"\s+" => "")
    x
end

function paschal_caser(x)
    x = strip(x)
    x = replace(x, r"""[,.:;?!()]""" => "_")
    x = replace(x, r"_+" => " ")
    x = replace(x, r"^_|_$" => "")
    x = replace(x, r"\s+" => " ")
    x = titlecase(x)
    x = replace(x, r"\s+" => "")
    x
end

function title_caser(x)
    x = strip(x)
    x = replace(x, r"""[,.:;?!()]""" => "_")
    x = replace(x, r"_+" => " ")
    x = replace(x, r"^_|_$" => "")
    x = replace(x, r"\s+" => " ")
    x = titlecase(x)
    x = strip(x)
    x
end

end # module
