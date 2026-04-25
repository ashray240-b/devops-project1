<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>NexusShop — Premium Picks</title>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700;900&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    :root {
      --bg: #090c10;
      --surface: #111620;
      --card: #161c28;
      --card-hover: #1d2538;
      --border: rgba(255,255,255,0.06);
      --primary: #f5f0e8;
      --muted: #6b7896;
      --gold: #c9a96e;
      --gold-light: #e8c98a;
      --gold-glow: rgba(201,169,110,0.18);
      --red: #e84545;
      --green: #2ecc8f;
      --radius: 16px;
      --radius-sm: 10px;
      --transition: 0.28s cubic-bezier(.4,0,.2,1);
    }
    *{box-sizing:border-box;margin:0;padding:0}
    html,body{height:100%;scroll-behavior:smooth}
    body{
      font-family:'DM Sans',sans-serif;
      color:var(--primary);
      background:var(--bg);
      -webkit-font-smoothing:antialiased;
      overflow-x:hidden;
    }
    a{color:inherit;text-decoration:none}

    body::before{
      content:'';
      position:fixed;inset:0;z-index:0;
      background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)' opacity='0.03'/%3E%3C/svg%3E");
      pointer-events:none;
      opacity:.4;
    }

    header{
      position:sticky;top:0;z-index:100;
      background:rgba(9,12,16,0.88);
      backdrop-filter:blur(20px);
      border-bottom:1px solid var(--border);
    }
    .header-inner{
      max-width:1280px;margin:0 auto;
      display:flex;align-items:center;justify-content:space-between;
      padding:16px 28px;gap:20px;
    }
    .brand{
      font-family:'Playfair Display',serif;
      font-size:22px;font-weight:900;letter-spacing:-.02em;
      display:flex;align-items:center;gap:4px;
    }
    .brand .accent{color:var(--gold)}
    .brand::before{
      content:'✦';color:var(--gold);font-size:14px;margin-right:4px;
      animation:spin 8s linear infinite;
    }
    @keyframes spin{to{transform:rotate(360deg)}}

    nav ul{display:flex;list-style:none;gap:4px}
    nav ul li a{
      padding:8px 14px;border-radius:var(--radius-sm);
      font-size:14px;font-weight:500;color:var(--muted);
      transition:color var(--transition),background var(--transition);
      display:flex;align-items:center;gap:7px;
    }
    nav ul li a:hover{color:var(--primary);background:rgba(255,255,255,0.05)}
    nav ul li a.active{color:var(--gold)}

    .search-bar{
      display:flex;align-items:center;
      background:var(--surface);
      border:1px solid var(--border);
      border-radius:999px;padding:9px 16px;
      gap:10px;min-width:220px;
      transition:border-color var(--transition),box-shadow var(--transition);
    }
    .search-bar:focus-within{
      border-color:var(--gold);
      box-shadow:0 0 0 3px var(--gold-glow);
    }
    .search-bar input{
      background:transparent;border:0;outline:0;
      color:var(--primary);font-size:13px;width:100%;
      font-family:'DM Sans',sans-serif;
    }
    .search-bar input::placeholder{color:var(--muted)}
    .search-bar i{color:var(--muted);font-size:13px}

    .header-actions{display:flex;align-items:center;gap:8px}
    .icon-btn{
      background:transparent;border:1px solid var(--border);
      width:38px;height:38px;border-radius:var(--radius-sm);
      display:inline-flex;align-items:center;justify-content:center;
      cursor:pointer;color:var(--muted);font-size:15px;
      transition:all var(--transition);
    }
    .icon-btn:hover{color:var(--gold);border-color:var(--gold);background:var(--gold-glow)}
    .cart-btn{
      position:relative;
      background:var(--gold);color:#0a0800;
      border:none;border-radius:var(--radius-sm);
      padding:8px 16px;font-weight:600;font-size:13px;
      cursor:pointer;display:flex;align-items:center;gap:8px;
      transition:all var(--transition);
    }
    .cart-btn:hover{background:var(--gold-light);transform:translateY(-1px)}
    .cart-count{
      background:#0a0800;color:var(--gold);
      font-size:11px;font-weight:700;
      width:20px;height:20px;border-radius:50%;
      display:inline-flex;align-items:center;justify-content:center;
    }
    .mobile-toggle{
      display:none;background:transparent;border:1px solid var(--border);
      color:var(--primary);width:38px;height:38px;border-radius:var(--radius-sm);
      align-items:center;justify-content:center;cursor:pointer;font-size:16px;
    }

    .hero{
      position:relative;min-height:88vh;
      display:flex;align-items:center;justify-content:center;
      overflow:hidden;
    }
    .hero-bg{
      position:absolute;inset:0;
      background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
    }
    .hero-bg::after{
      content:'';position:absolute;inset:0;
      background:linear-gradient(135deg,rgba(9,12,16,0.95) 40%,rgba(9,12,16,0.7) 100%);
    }
    .hero-content{
      position:relative;z-index:2;
      max-width:680px;padding:0 28px;
      animation:fadeUp .9s ease both;
    }
    @keyframes fadeUp{from{opacity:0;transform:translateY(30px)}to{opacity:1;transform:translateY(0)}}
    .hero-tag{
      display:inline-flex;align-items:center;gap:8px;
      background:var(--gold-glow);border:1px solid rgba(201,169,110,0.3);
      color:var(--gold);border-radius:999px;padding:6px 14px;
      font-size:12px;font-weight:600;letter-spacing:.08em;text-transform:uppercase;
      margin-bottom:22px;
    }
    .hero h1{
      font-family:'Playfair Display',serif;
      font-size:clamp(42px,7vw,80px);line-height:1.05;
      font-weight:900;letter-spacing:-.03em;
      margin-bottom:20px;
    }
    .hero h1 span{color:var(--gold)}
    .hero p{
      color:rgba(245,240,232,.65);font-size:17px;line-height:1.6;
      max-width:560px;margin-bottom:34px;font-weight:300;
    }
    .hero-actions{display:flex;gap:14px;flex-wrap:wrap}
    .btn{
      display:inline-flex;align-items:center;gap:10px;
      padding:14px 26px;border-radius:999px;
      font-weight:600;font-size:14px;cursor:pointer;border:0;
      transition:all var(--transition);
    }
    .btn-gold{
      background:linear-gradient(135deg,var(--gold),var(--gold-light));
      color:#0a0800;
    }
    .btn-gold:hover{transform:translateY(-2px);box-shadow:0 12px 32px rgba(201,169,110,.35)}
    .btn-outline{
      background:transparent;border:1.5px solid rgba(245,240,232,.25);
      color:var(--primary);
    }
    .btn-outline:hover{border-color:var(--gold);color:var(--gold)}

    .hero-stats{
      display:flex;gap:36px;margin-top:50px;
      position:relative;padding-top:28px;
    }
    .hero-stats::before{
      content:'';position:absolute;top:0;left:0;right:0;
      height:1px;background:linear-gradient(90deg,transparent,var(--border),transparent);
    }
    .stat-num{
      font-family:'Playfair Display',serif;font-size:26px;font-weight:700;
      color:var(--gold);
    }
    .stat-label{font-size:12px;color:var(--muted);margin-top:2px}

    .scroll-hint{
      position:absolute;bottom:30px;left:50%;transform:translateX(-50%);
      z-index:3;display:flex;flex-direction:column;align-items:center;gap:8px;
      color:var(--muted);font-size:11px;letter-spacing:.1em;text-transform:uppercase;animation:bounce 2s infinite;
    }
    @keyframes bounce{0%,100%{transform:translateX(-50%) translateY(0)}50%{transform:translateX(-50%) translateY(-8px)}}

    .container{max-width:1280px;margin:0 auto;padding:0 28px}
    .section{padding:72px 0}
    .section-header{
      display:flex;align-items:flex-end;justify-content:space-between;
      margin-bottom:40px;gap:20px;
    }
    .section-label{
      color:var(--gold);font-size:11px;font-weight:600;
      letter-spacing:.15em;text-transform:uppercase;margin-bottom:8px;
    }
    .section-title{
      font-family:'Playfair Display',serif;
      font-size:clamp(26px,4vw,40px);font-weight:700;line-height:1.1;
    }
    .section-sub{color:var(--muted);font-size:14px;max-width:480px;line-height:1.6}
    .see-all{
      display:inline-flex;align-items:center;gap:8px;
      color:var(--gold);font-size:13px;font-weight:600;
      white-space:nowrap;padding:8px 16px;border-radius:999px;
      border:1px solid rgba(201,169,110,.25);
      transition:all var(--transition);
    }
    .see-all:hover{background:var(--gold-glow)}

    .categories-grid{
      display:grid;grid-template-columns:repeat(6,1fr);gap:14px;
    }
    .cat-card{
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);padding:22px 14px;
      text-align:center;cursor:pointer;
      transition:all var(--transition);
      position:relative;overflow:hidden;
    }
    .cat-card::before{
      content:'';position:absolute;inset:0;
      background:linear-gradient(135deg,var(--gold-glow),transparent);
      opacity:0;transition:opacity var(--transition);
    }
    .cat-card:hover{border-color:rgba(201,169,110,.4);transform:translateY(-4px)}
    .cat-card:hover::before{opacity:1}
    .cat-icon{
      width:52px;height:52px;border-radius:14px;
      background:linear-gradient(135deg,rgba(201,169,110,.15),rgba(201,169,110,.05));
      border:1px solid rgba(201,169,110,.2);
      display:inline-flex;align-items:center;justify-content:center;
      font-size:22px;color:var(--gold);margin-bottom:12px;
      transition:all var(--transition);
    }
    .cat-card:hover .cat-icon{background:linear-gradient(135deg,rgba(201,169,110,.3),rgba(201,169,110,.1));transform:scale(1.05)}
    .cat-name{font-size:13px;font-weight:600;margin-bottom:4px}
    .cat-sub{font-size:11px;color:var(--muted)}

    .products-grid{
      display:grid;grid-template-columns:repeat(4,1fr);gap:20px;
    }
    .product{
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);overflow:hidden;
      display:flex;flex-direction:column;
      transition:all var(--transition);
      position:relative;
    }
    .product:hover{
      border-color:rgba(201,169,110,.3);
      transform:translateY(-6px);
      box-shadow:0 24px 48px rgba(0,0,0,.4);
    }
    .product-img-wrap{position:relative;overflow:hidden}
    .product img{
      width:100%;height:220px;object-fit:cover;
      display:block;transition:transform .45s ease;
    }
    .product:hover img{transform:scale(1.06)}
    .product-img-wrap::after{
      content:'';position:absolute;inset:0;
      background:linear-gradient(to top,rgba(9,12,16,.5),transparent 50%);
      opacity:0;transition:opacity var(--transition);
    }
    .product:hover .product-img-wrap::after{opacity:1}
    .badge{
      position:absolute;top:12px;left:12px;
      padding:4px 10px;border-radius:6px;font-size:11px;font-weight:700;
      z-index:2;
    }
    .badge-new{background:var(--green);color:#fff}
    .badge-sale{background:var(--red);color:#fff}
    .product-body{padding:16px;flex:1;display:flex;flex-direction:column;gap:8px}
    .product-cat{font-size:11px;color:var(--gold);font-weight:600;letter-spacing:.08em;text-transform:uppercase}
    .product-title{font-size:15px;font-weight:600;line-height:1.3}
    .product-rating{display:flex;align-items:center;gap:6px;font-size:12px}
    .stars{color:var(--gold)}
    .review-count{color:var(--muted)}
    .product-price-row{
      display:flex;align-items:center;justify-content:space-between;
      margin-top:auto;padding-top:10px;
    }
    .price{font-size:18px;font-weight:700;color:var(--primary)}
    .old-price{font-size:13px;color:var(--muted);text-decoration:line-through;margin-left:6px}
    .product-footer{
      display:flex;gap:10px;padding:12px 16px 16px;
    }
    .add-btn{
      flex:1;background:linear-gradient(135deg,var(--gold),var(--gold-light));
      color:#0a0800;border:0;padding:11px;border-radius:var(--radius-sm);
      cursor:pointer;font-weight:700;font-size:13px;
      display:flex;align-items:center;justify-content:center;gap:8px;
      transition:all var(--transition);
    }
    .add-btn:hover{box-shadow:0 8px 24px rgba(201,169,110,.35);transform:translateY(-1px)}
    .wish-btn{
      background:transparent;border:1px solid var(--border);
      padding:10px 12px;border-radius:var(--radius-sm);
      cursor:pointer;color:var(--muted);
      transition:all var(--transition);
    }
    .wish-btn:hover{border-color:var(--red);color:var(--red);background:rgba(232,69,69,.08)}

    .deal-section{
      background:linear-gradient(135deg,#0d1520,#111a2e);
      border:1px solid var(--border);border-radius:var(--radius);
      overflow:hidden;display:flex;
    }
    .deal-img{
      width:45%;position:relative;overflow:hidden;flex-shrink:0;
    }
    .deal-img img{width:100%;height:100%;object-fit:cover;display:block}
    .deal-img::after{
      content:'';position:absolute;inset:0;
      background:linear-gradient(90deg,transparent 60%,#0d1520);
    }
    .deal-content{padding:48px 44px;flex:1;display:flex;flex-direction:column;justify-content:center}
    .deal-badge{
      display:inline-flex;align-items:center;gap:8px;
      background:rgba(232,69,69,.15);border:1px solid rgba(232,69,69,.3);
      color:#ff6b6b;padding:6px 14px;border-radius:999px;
      font-size:11px;font-weight:700;letter-spacing:.1em;text-transform:uppercase;
      margin-bottom:20px;width:fit-content;
    }
    .deal-title{
      font-family:'Playfair Display',serif;
      font-size:clamp(28px,4vw,44px);font-weight:900;line-height:1.1;
      margin-bottom:12px;
    }
    .deal-sub{color:var(--muted);font-size:15px;margin-bottom:28px;line-height:1.6}
    .timer{display:flex;gap:12px;margin-bottom:28px}
    .time-box{
      background:var(--surface);border:1px solid var(--border);
      border-radius:12px;padding:16px 20px;text-align:center;min-width:72px;
    }
    .time-num{
      font-family:'Playfair Display',serif;
      font-size:28px;font-weight:700;color:var(--gold);line-height:1;
    }
    .time-label{font-size:10px;color:var(--muted);letter-spacing:.1em;text-transform:uppercase;margin-top:4px}
    .timer-sep{
      font-size:24px;color:var(--muted);display:flex;align-items:center;padding-bottom:8px;
    }
    .deal-price-row{display:flex;align-items:center;gap:14px;margin-bottom:24px}
    .deal-price{font-family:'Playfair Display',serif;font-size:36px;font-weight:700;color:var(--gold)}
    .deal-old-price{font-size:18px;color:var(--muted);text-decoration:line-through}
    .deal-tag{
      background:rgba(232,69,69,.15);color:#ff6b6b;
      padding:6px 12px;border-radius:8px;font-weight:700;font-size:13px;
    }
    .stock-bar{margin-bottom:24px}
    .stock-label{font-size:13px;color:var(--muted);margin-bottom:8px}
    .progress{background:var(--surface);height:6px;border-radius:999px;overflow:hidden}
    .progress-fill{
      height:100%;width:65%;border-radius:999px;
      background:linear-gradient(90deg,var(--gold),var(--gold-light));
    }

    .testimonials-grid{
      display:grid;grid-template-columns:repeat(2,1fr);gap:20px;
    }
    .testimonial{
      background:var(--card);border:1px solid var(--border);
      border-radius:var(--radius);padding:26px;
      transition:all var(--transition);
    }
    .testimonial:hover{border-color:rgba(201,169,110,.25);transform:translateY(-3px)}
    .t-stars{color:var(--gold);font-size:14px;margin-bottom:14px}
    .t-text{color:rgba(245,240,232,.75);font-size:14px;line-height:1.7;margin-bottom:18px}
    .t-author{display:flex;align-items:center;gap:12px}
    .t-avatar{
      width:44px;height:44px;border-radius:50%;
      object-fit:cover;border:2px solid rgba(201,169,110,.3);
    }
    .t-name{font-weight:600;font-size:14px}
    .t-role{font-size:12px;color:var(--muted)}

    .newsletter{
      background:linear-gradient(135deg,#0f1822,#1a1030);
      border:1px solid var(--border);border-radius:var(--radius);
      padding:56px;text-align:center;position:relative;overflow:hidden;
    }
    .newsletter::before{
      content:'';position:absolute;
      width:400px;height:400px;
      background:radial-gradient(circle,rgba(201,169,110,.08),transparent 70%);
      top:-100px;left:50%;transform:translateX(-50%);
    }
    .newsletter h2{
      font-family:'Playfair Display',serif;
      font-size:clamp(24px,4vw,38px);font-weight:700;margin-bottom:12px;
      position:relative;z-index:1;
    }
    .newsletter p{color:var(--muted);font-size:15px;margin-bottom:30px;position:relative;z-index:1}
    .newsletter-form{
      display:flex;justify-content:center;gap:12px;flex-wrap:wrap;
      position:relative;z-index:1;
    }
    .newsletter-form input{
      background:var(--surface);border:1px solid var(--border);
      color:var(--primary);border-radius:999px;
      padding:14px 24px;font-size:14px;
      width:300px;max-width:100%;outline:0;
      font-family:'DM Sans',sans-serif;
      transition:border-color var(--transition),box-shadow var(--transition);
    }
    .newsletter-form input:focus{
      border-color:var(--gold);box-shadow:0 0 0 3px var(--gold-glow);
    }
    #newsletterMsg{margin-top:12px;font-size:13px;font-weight:500}

    footer{
      border-top:1px solid var(--border);
      padding:48px 0 28px;
      background:rgba(0,0,0,.3);
    }
    .footer-grid{
      display:grid;grid-template-columns:2fr 1fr 1fr 1fr;
      gap:40px;margin-bottom:40px;
    }
    .footer-brand{
      font-family:'Playfair Display',serif;font-size:20px;font-weight:700;
      margin-bottom:12px;
    }
    .footer-brand .accent{color:var(--gold)}
    .footer-desc{color:var(--muted);font-size:13px;line-height:1.7;max-width:260px;margin-bottom:20px}
    .footer-socials{display:flex;gap:10px}
    .social-btn{
      width:36px;height:36px;border-radius:9px;
      background:var(--surface);border:1px solid var(--border);
      display:inline-flex;align-items:center;justify-content:center;
      color:var(--muted);font-size:14px;
      transition:all var(--transition);
    }
    .social-btn:hover{border-color:var(--gold);color:var(--gold);background:var(--gold-glow)}
    .footer-heading{font-size:12px;font-weight:700;letter-spacing:.12em;text-transform:uppercase;color:var(--primary);margin-bottom:16px}
    .footer-links{list-style:none;display:flex;flex-direction:column;gap:10px}
    .footer-links li a{color:var(--muted);font-size:13px;transition:color var(--transition)}
    .footer-links li a:hover{color:var(--gold)}
    .footer-bottom{
      border-top:1px solid var(--border);padding-top:22px;
      display:flex;align-items:center;justify-content:space-between;
      flex-wrap:wrap;gap:12px;
    }
    .footer-copy{font-size:12px;color:var(--muted)}
    .footer-legal{display:flex;gap:20px}
    .footer-legal a{font-size:12px;color:var(--muted);transition:color var(--transition)}
    .footer-legal a:hover{color:var(--gold)}

    #mobileMenu{
      display:none;background:var(--surface);
      border-top:1px solid var(--border);
      padding:16px 28px;
    }
    #mobileMenu nav ul{flex-direction:column;gap:4px}
    #mobileMenu nav ul li a{color:var(--primary)}

    @media(max-width:1100px){
      .categories-grid{grid-template-columns:repeat(3,1fr)}
      .products-grid{grid-template-columns:repeat(3,1fr)}
      .footer-grid{grid-template-columns:1fr 1fr}
    }
    @media(max-width:860px){
      header nav.main-nav{display:none}
      .mobile-toggle{display:inline-flex}
      .products-grid{grid-template-columns:repeat(2,1fr)}
      .categories-grid{grid-template-columns:repeat(3,1fr)}
      .deal-section{flex-direction:column}
      .deal-img{width:100%;height:280px}
      .deal-img::after{background:linear-gradient(0deg,#0d1520 5%,transparent 60%)}
      .deal-content{padding:32px 28px}
      .testimonials-grid{grid-template-columns:1fr}
      .hero h1{font-size:42px}
      .hero-stats{gap:24px}
    }
    @media(max-width:580px){
      .header-inner{padding:12px 16px}
      .search-bar{display:none}
      .products-grid{grid-template-columns:1fr}
      .categories-grid{grid-template-columns:repeat(2,1fr)}
      .hero-stats{flex-wrap:wrap}
      .newsletter{padding:36px 20px}
      .footer-grid{grid-template-columns:1fr}
      .section-header{flex-direction:column;align-items:flex-start}
    }
  </style>
</head>
<body>

<header>
  <div class="header-inner">
    <div style="display:flex;align-items:center;gap:14px">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
        <i class="fas fa-bars"></i>
      </button>
      <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
    </div>

    <nav class="main-nav" id="mainNav" aria-label="Primary">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#trending"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px">
      <div class="search-bar">
        <i class="fas fa-search"></i>
        <input type="search" id="searchInput" placeholder="Search products…">
        <button onclick="filterProducts(document.getElementById('searchInput').value)" style="background:none;border:none;cursor:pointer;color:var(--muted);font-size:11px">⏎</button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <button class="cart-btn" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          Cart <span class="cart-count" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <nav><ul>
      <li><a href="#">Home</a></li>
      <li><a href="#categories">Categories</a></li>
      <li><a href="#trending">Trending</a></li>
      <li><a href="#deals">Deals</a></li>
    </ul></nav>
  </div>
</header>

<main>

<section class="hero">
  <div class="hero-bg"></div>
  <div class="hero-content">
    <div class="hero-tag"><i class="fas fa-crown"></i> New Season Collection 2025</div>
    <h1>Redefine Your <span>Style.</span></h1>
    <p>Discover premium fashion, tech, and accessories curated for the discerning taste. Limited-time deals. Free shipping over $99.</p>
    <div class="hero-actions">
      <button class="btn btn-gold" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
      <button class="btn btn-outline" id="exploreDeals">View Deals</button>
    </div>
    <div class="hero-stats">
      <div>
        <div class="stat-num">50K+</div>
        <div class="stat-label">Happy Customers</div>
      </div>
      <div>
        <div class="stat-num">1200+</div>
        <div class="stat-label">Premium Products</div>
      </div>
      <div>
        <div class="stat-num">4.9★</div>
        <div class="stat-label">Average Rating</div>
      </div>
    </div>
  </div>
  <div class="scroll-hint">
    <i class="fas fa-chevron-down"></i>
    <span>Scroll</span>
  </div>
</section>

<section id="categories" class="section container">
  <div class="section-header">
    <div>
      <div class="section-label">✦ Browse</div>
      <h2 class="section-title">Shop by Category</h2>
      <p class="section-sub">Explore our carefully curated product categories.</p>
    </div>
    <a href="#" class="see-all">View All <i class="fas fa-arrow-right"></i></a>
  </div>
  <div class="categories-grid" id="categoriesGrid"></div>
</section>

<section id="trending" class="section container">
  <div class="section-header">
    <div>
      <div class="section-label">✦ Hot Right Now</div>
      <h2 class="section-title">Trending Products</h2>
      <p class="section-sub">Popular picks based on real-time customer activity.</p>
    </div>
    <a href="#" class="see-all">All Products <i class="fas fa-arrow-right"></i></a>
  </div>
  <div class="products-grid" id="productsGrid"></div>
</section>

<section id="deals" class="section container">
  <div class="section-header">
    <div>
      <div class="section-label">✦ Flash Sale</div>
      <h2 class="section-title">Today's Best Deal</h2>
      <p class="section-sub">Grab it before it's gone. Limited stock available.</p>
    </div>
  </div>
  <div class="deal-section">
    <div class="deal-img">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
    </div>
    <div class="deal-content">
      <div class="deal-badge"><i class="fas fa-bolt"></i> Flash Deal — Ends Soon</div>
      <h3 class="deal-title">MacBook Air M2</h3>
      <p class="deal-sub">Thin, light and impossibly powerful. M2 performance in an iconic design — now at its lowest price.</p>
      <div class="timer">
        <div class="time-box">
          <div class="time-num" id="dealDays">0</div>
          <div class="time-label">Days</div>
        </div>
        <div class="timer-sep">:</div>
        <div class="time-box">
          <div class="time-num" id="dealHours">00</div>
          <div class="time-label">Hrs</div>
        </div>
        <div class="timer-sep">:</div>
        <div class="time-box">
          <div class="time-num" id="dealMinutes">00</div>
          <div class="time-label">Min</div>
        </div>
        <div class="timer-sep">:</div>
        <div class="time-box">
          <div class="time-num" id="dealSeconds">00</div>
          <div class="time-label">Sec</div>
        </div>
      </div>
      <div class="deal-price-row">
        <span class="deal-price">$999</span>
        <span class="deal-old-price">$1,199</span>
        <span class="deal-tag">Save 17%</span>
      </div>
      <div class="stock-bar">
        <div class="stock-label">🔥 Only <strong>12 left</strong> at this price</div>
        <div class="progress"><div class="progress-fill"></div></div>
      </div>
      <button class="btn btn-gold" id="buyDeal"><i class="fas fa-shopping-bag"></i> Buy Now</button>
    </div>
  </div>
</section>

<section class="section container">
  <div class="section-header">
    <div>
      <div class="section-label">✦ Reviews</div>
      <h2 class="section-title">What Customers Say</h2>
      <p class="section-sub">Real reviews from verified buyers.</p>
    </div>
  </div>
  <div class="testimonials-grid">
    <div class="testimonial">
      <div class="t-stars">★★★★★</div>
      <p class="t-text">"Fast shipping, impeccable packaging and the quality is beyond what I expected. This is my go-to store for premium picks."</p>
      <div class="t-author">
        <img class="t-avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava">
        <div><div class="t-name">Ava Martin</div><div class="t-role">Verified Buyer · Fashion</div></div>
      </div>
    </div>
    <div class="testimonial">
      <div class="t-stars">★★★★☆</div>
      <p class="t-text">"Great selection and the checkout was super smooth. The deals are genuinely good. Will definitely shop again."</p>
      <div class="t-author">
        <img class="t-avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael">
        <div><div class="t-name">Michael Lee</div><div class="t-role">Frequent Buyer · Tech</div></div>
      </div>
    </div>
    <div class="testimonial">
      <div class="t-stars">★★★★★</div>
      <p class="t-text">"The customer support is genuinely helpful. Had an issue with my order and it was resolved in under 2 hours."</p>
      <div class="t-author">
        <img class="t-avatar" src="https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?auto=format&fit=crop&w=80&q=80" alt="Priya">
        <div><div class="t-name">Priya Sharma</div><div class="t-role">Verified Buyer · Accessories</div></div>
      </div>
    </div>
    <div class="testimonial">
      <div class="t-stars">★★★★★</div>
      <p class="t-text">"Been using NexusShop for over a year. The curation is unmatched — they always have exactly what I'm looking for."</p>
      <div class="t-author">
        <img class="t-avatar" src="https://images.unsplash.com/photo-1502767089025-6572583495f9?auto=format&fit=crop&w=80&q=80" alt="James">
        <div><div class="t-name">James Okonkwo</div><div class="t-role">Loyal Customer · Gadgets</div></div>
      </div>
    </div>
  </div>
</section>

<section class="section container">
  <div class="newsletter">
    <div class="section-label" style="justify-content:center;display:flex;margin-bottom:14px">✦ Stay In The Loop</div>
    <h2>Exclusive Deals, Delivered.</h2>
    <p>Join 50,000+ subscribers. Get early access to flash sales and new arrivals.</p>
    <div class="newsletter-form">
      <input id="newsletterEmail" type="email" placeholder="your@email.com" required>
      <button class="btn btn-gold" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
    </div>
    <div id="newsletterMsg"></div>
  </div>
</section>

</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="footer-brand">Nexus<span class="accent">Shop</span></div>
        <p class="footer-desc">A modern premium e-commerce experience. Quality products, exceptional service, unbeatable deals.</p>
        <div class="footer-socials">
          <a class="social-btn" href="#"><i class="fab fa-instagram"></i></a>
          <a class="social-btn" href="#"><i class="fab fa-twitter"></i></a>
          <a class="social-btn" href="#"><i class="fab fa-facebook"></i></a>
          <a class="social-btn" href="#"><i class="fab fa-pinterest"></i></a>
        </div>
      </div>
      <div>
        <div class="footer-heading">Company</div>
        <ul class="footer-links">
          <li><a href="#">About Us</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
      </div>
      <div>
        <div class="footer-heading">Support</div>
        <ul class="footer-links">
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Shipping & Returns</a></li>
          <li><a href="#">Track Order</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
      <div>
        <div class="footer-heading">Shop</div>
        <ul class="footer-links">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Flash Sales</a></li>
          <li><a href="#">Gift Cards</a></li>
          <li><a href="#">Loyalty Program</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="footer-copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
      <div class="footer-legal">
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
        <a href="#">Cookie Settings</a>
      </div>
    </div>
  </div>
</footer>

<script>
const CATEGORIES = [
  {id:'phones',name:'Smartphones',icon:'fa-mobile-alt',count:'240+ items'},
  {id:'laptops',name:'Laptops',icon:'fa-laptop',count:'85+ items'},
  {id:'clothing',name:'Clothing',icon:'fa-tshirt',count:'520+ items'},
  {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:'160+ items'},
  {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:'310+ items'},
  {id:'accessories',name:'Accessories',icon:'fa-watch',count:'190+ items'}
];

const PRODUCTS = [
  {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',badgeType:'new',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',category:'phones'},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',category:'laptops'},
  {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'-25%',badgeType:'sale',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',category:'footwear'},
  {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',category:'gadgets'},
  {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'-20%',badgeType:'sale',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',category:'accessories'},
  {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'Hot',badgeType:'new',img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',category:'gadgets'}
];

let cartCount = 0;
const cartCountEl = document.getElementById('cartCount');
const searchInput = document.getElementById('searchInput');

function escapeHtml(t){return String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]))}

function renderCategories(){
  const grid = document.getElementById('categoriesGrid');
  grid.innerHTML = '';
  CATEGORIES.forEach(cat => {
    const el = document.createElement('div');
    el.className = 'cat-card';
    el.innerHTML = `
      <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
      <div class="cat-name">${cat.name}</div>
      <div class="cat-sub">${cat.count}</div>`;
    el.addEventListener('click', () => {
      searchInput.value = cat.name;
      filterProducts(cat.name);
      document.getElementById('trending').scrollIntoView({behavior:'smooth',block:'start'});
    });
    grid.appendChild(el);
  });
}

function renderProducts(list){
  const grid = document.getElementById('productsGrid');
  grid.innerHTML = '';
  if(!list.length){
    grid.innerHTML = `<div style="grid-column:1/-1;text-align:center;padding:48px;color:var(--muted)">
      <i class="fas fa-search" style="font-size:32px;margin-bottom:12px;display:block"></i>No products found.</div>`;
    return;
  }
  list.forEach(p => {
    const el = document.createElement('article');
    el.className = 'product';
    el.innerHTML = `
      <div class="product-img-wrap">
        ${p.badge ? `<div class="badge badge-${p.badgeType||'new'}">${escapeHtml(p.badge)}</div>` : ''}
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
      </div>
      <div class="product-body">
        <div class="product-cat">${escapeHtml(p.category)}</div>
        <div class="product-title">${escapeHtml(p.title)}</div>
        <div class="product-rating">
          <span class="stars">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))}</span>
          <span class="review-count">(${p.reviews})</span>
        </div>
        <div class="product-price-row">
          <div>
            <span class="price">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
        </div>
      </div>
      <div class="product-footer">
        <button class="add-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
        <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
      </div>`;
    grid.appendChild(el);
  });
  grid.querySelectorAll('.add-btn').forEach(btn => {
    btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
  });
}

function addToCart(id){
  const p = PRODUCTS.find(x=>x.id===id);
  if(!p) return;
  cartCount++;
  cartCountEl.textContent = cartCount;
  const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
  if(btn){
    const orig = btn.innerHTML;
    btn.innerHTML = '<i class="fas fa-check"></i> Added!';
    btn.style.background = 'var(--green)';
    btn.disabled = true;
    setTimeout(()=>{btn.innerHTML=orig;btn.style.background='';btn.disabled=false;},1400);
  }
}

function filterProducts(q){
  const query = String(q||'').trim().toLowerCase();
  if(!query){renderProducts(PRODUCTS);return;}
  renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(query)||p.category.toLowerCase().includes(query)));
}

document.getElementById('searchInput').addEventListener('keydown', e=>{if(e.key==='Enter')filterProducts(e.target.value)});

document.getElementById('mobileToggle').addEventListener('click', ()=>{
  const m = document.getElementById('mobileMenu');
  m.style.display = m.style.display==='block'?'none':'block';
});

document.getElementById('subscribeBtn').addEventListener('click', ()=>{
  const email = document.getElementById('newsletterEmail').value.trim();
  const msg = document.getElementById('newsletterMsg');
  if(!email||!email.includes('@')){
    msg.textContent='Please enter a valid email address.';
    msg.style.color='#ff6b6b';msg.style.display='block';return;
  }
  msg.textContent="🎉 You're subscribed! Welcome to the inner circle.";
  msg.style.color='var(--gold)';msg.style.display='block';
  document.getElementById('newsletterEmail').value='';
  setTimeout(()=>msg.style.display='none',4000);
});

(function(){
  const target = new Date(Date.now()+(24*60+36)*60*1000);
  function tick(){
    const diff = target - Date.now();
    if(diff<=0){clearInterval(t);return;}
    document.getElementById('dealDays').textContent = Math.floor(diff/(86400000));
    document.getElementById('dealHours').textContent = String(Math.floor((diff%86400000)/3600000)).padStart(2,'0');
    document.getElementById('dealMinutes').textContent = String(Math.floor((diff%3600000)/60000)).padStart(2,'0');
    document.getElementById('dealSeconds').textContent = String(Math.floor((diff%60000)/1000)).padStart(2,'0');
  }
  tick();const t=setInterval(tick,1000);
})();

document.getElementById('shopNow').addEventListener('click',()=>document.getElementById('trending').scrollIntoView({behavior:'smooth'}));
document.getElementById('exploreDeals').addEventListener('click',()=>document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
document.getElementById('buyDeal').addEventListener('click',()=>{
  cartCount++;cartCountEl.textContent=cartCount;
  const b=document.getElementById('buyDeal');
  const o=b.innerHTML;
  b.innerHTML='<i class="fas fa-check"></i> Added!';
  setTimeout(()=>b.innerHTML=o,1500);
});

document.getElementById('year').textContent = new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
</script>
</body>
</html>
