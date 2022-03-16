function page(id, pageI, totalPage, gap) {
    var c = document.getElementById(id);
    if (pageI - gap > 1)
        c.innerHTML += '<a href="home?page=1">First</a>';

    for (var i = pageI - gap; i < pageI; i++)
        if (i > 0)
            c.innerHTML += '<a href="home?page=' + i + '">' + i + '</a>';

    c.innerHTML += '<span>' + pageI + '</span>';

    for (var i = pageI + 1; i <= pageI + gap; i++)
        if (i <= totalPage)
            c.innerHTML += '<a href="home?page=' + i + '">' + i + '</a>';

    if (pageI + gap < totalPage)
        c.innerHTML += '<a href="home?page=' + totalPage + '">Last</a>';

}


