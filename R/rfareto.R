#' Start up an rfareto server
#' @export
setup_rfareto <- function (port=8765) {
    dir = tempdir() # will be cleaned up automatically

    # copy the Fareto JS source to the temporary directory
    fareto_source = fs::path_package("rfareto", "fareto")
    file.copy(fareto_source, dir, recursive = T)

    servr::httd(dir = file.path(dir, "fareto"), browser = F, daemon = T, port = port)

    instance = list(
        dir = dir,
        port = port
    )

    return(instance)
}

#' Visualize an r5r result using rfareto
#' @export
fareto <- function (rfareto_instance, fareto_result) {
    id = uuid::UUIDgenerate()
    cat(fareto_result, file=file.path(rfareto_instance$dir, "fareto", "results", paste0(id, ".json")))
    browseURL(paste0("http://127.0.0.1:", rfareto_instance$port, "/?load=", id))
}