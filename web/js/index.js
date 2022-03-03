
let products = [
    {
        name: 'HCorsair03',
        image1: '../images/HCorsair03.jpg',
        image2: '../images/HCorsair03(2).jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'MLogitech02',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02(2).jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'KRazer01',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02.jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'JBL Horizon',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02.jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'JBL Tune 220TWS',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02.jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'UA Project Rock',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02.jpg',
        old_price: '400',
        curr_price: '300'
    },
    {
        name: 'JBL Endurance SPRINT',
        image1: '../images/MLogitech02.jpg',
        image2: '../images/MLogitech02.jpg',
        old_price: '400',
        curr_price: '300'
    },
]

let product_list = document.querySelector('#discount-products')
let best_product_list = document.querySelector('#list-products')

products.forEach(e => {
    let prod = `
        <div class="col-3 col-md-6 col-sm-12">
            <div class="product-card">
                <div class="product-card-img">
                    <img src="${e.image1}" alt="">
                    <img src="${e.image2}" alt="">
                </div>
                <div class="product-card-info">
                    <div class="product-btn">
                        <button class="btn-flat btn-hover btn-shop-now">shop now</button>
                        <button class="btn-flat btn-hover btn-cart-add">
                            <i class='bx bxs-cart-add'></i>
                        </button>
                        <button class="btn-flat btn-hover btn-cart-add">
                            <i class='bx bxs-heart'></i>
                        </button>
                    </div>
                    <div class="product-card-name">
                        ${e.name}
                    </div>
                    <div class="product-card-price">
                        <span><del>${e.old_price}</del></span>
                        <span class="curr-price">${e.curr_price}</span>
                    </div>
                </div>
            </div>
        </div>
    `

    product_list.insertAdjacentHTML("beforeend", prod)
    best_product_list.insertAdjacentHTML("afterbegin", prod)
})


