$(function () {
    $('.img-section, #login-section').css({
        'margin-top': $('header').height() * 1.5 + 'px'
    });

    $('header .navbar-nav .nav-link').on('click', function (e) {
        e.preventDefault();

        const go = $(this).attr('href');
        const scrollWhere = $(go).offset().top + $(go).outerHeight() + $('header').height() - $(window).height();

        $('html').animate({
            scrollTop: scrollWhere
        }, 0)
    });


    let isSlideDownArchive = false;
    let isSlideDownDownload = false;
    $(window).on('scroll', function () {
        const archiveHeight = $('div#archive-section').offset().top - $('div#archive-section').outerHeight();
        const downloadHeight = $('div#download-section').offset().top - $('div#download-section').outerHeight();
        const noticeHeight = $('div#notice-section').offset().top - $('div#notice-section').outerHeight();
        if ($(this).scrollTop() >= archiveHeight) {
            toggleActive('#archive-section')
            if (!isSlideDownArchive) {
                isSlideDownArchive = true;
                $('div#archive-section .main-section-content').each(function (index) {
                    const delay = index * 0.2;
                    $(this).css({
                        'transform': 'translateY(0)',
                        'opacity': '1',
                        'transition': `transform .4s ${delay}s linear, opacity .4s ${delay}s linear`
                    })
                })
            }
        }
        if ($(this).scrollTop() >= downloadHeight) {
            toggleActive('#download-section')
            if (!isSlideDownDownload) {
                isSlideDownDownload = true;
                $('div#download-section .download-section-content').each(function (index) {
                    const delay = index * 0.2;
                    $(this).css({
                        'transform': 'translateY(0)',
                        'opacity': '1',
                        'transition': `transform .4s ${delay}s linear, opacity .4s ${delay}s linear`
                    })
                })
            }
        }
        if ($(this).scrollTop() >= noticeHeight) {
            toggleActive('#notice-section')
        }
        if(!($(this).scrollTop() >= archiveHeight)) {
            toggleActive('no-selected')
        }
    })
    function toggleActive(current) {
        $('.navbar-nav a.nav-link').each(function() {
            const attr = $(this).attr('href');
            if (attr == current) {
                $(this).addClass('active')
            } else {
                $(this).removeClass('active')
            }
        })
    }
})