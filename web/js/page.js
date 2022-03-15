function page(id, pageI, totalPage, gap) {
    var c = document.getElementById(id);
    if (pageI - gap > 1)
        c.innerHTML += '<li><a href="home?page=1">First</a></li>';

    for (var i = pageI - gap; i < pageI; i++)
        if (i > 0)
            c.innerHTML += '<li><a href="home?page=' + i + '">' + i + '</a></li>';

    c.innerHTML += '<li><span>' + pageI + '</span></li>';

    for (var i = pageI + 1; i <= pageI + gap; i++)
        if (i <= totalPage)
            c.innerHTML += '<li><a href="home?page=' + i + '">' + i + '</a></li>';

    if (pageI + gap < totalPage)
        c.innerHTML += '<li><a href="home?page=' + totalPage + '">Last</a></li>';

}


