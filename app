<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ElbioYa - Aplicación Oficial</title>
<style>
        :root {
            --azul-cabecera: #0056B3;
            --azul-boton: #003F91;
            --celeste-fondo: #A9CBEF;
            --blanco: #FFFFFF;
            --negro: #000000;
            --rojo-escudo: #9E3232;
            --azul-escudo: #1B365D;
            --oro-escudo: #F2C144;
        }

 

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            -webkit-tap-highlight-color: transparent;
        }

 

        body {
            background-color: #1a1a1a;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

 

        .app-container {
            width: 360px;
            height: 720px;
            background-color: var(--celeste-fondo);
            position: relative;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            border: 4px solid #000;
        }

 

        /* --- ESCUDO PERFECTO (CSS PURO) --- */
        .escudo-perfecto {
            width: 140px;
            height: 170px;
            border: 5px solid var(--rojo-escudo);
            background: white;
            border-bottom-left-radius: 45% 25%;
            border-bottom-right-radius: 45% 25%;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            position: relative;
            flex-shrink: 0;
        }
        .esc-top { height: 35%; background: #A9CBEF; position: relative; border-bottom: 4px solid var(--rojo-escudo); }
        .esc-sol { position: absolute; bottom: -15px; left: 50%; transform: translateX(-50%); width: 45px; height: 45px; background: var(--oro-escudo); border-radius: 50%; border: 2px solid #000; z-index: 2; }
        .esc-rayo { position: absolute; bottom: 0; left: 50%; width: 2px; height: 40px; background: var(--oro-escudo); transform-origin: bottom; }
        .esc-mid { height: 14%; background: var(--azul-escudo); color: white; font-size: 7px; font-weight: bold; display: flex; align-items: center; justify-content: center; letter-spacing: 2px; border-bottom: 4px solid var(--rojo-escudo); z-index: 3; }
        .esc-bot { flex: 1; display: grid; grid-template-columns: 1fr 1fr; grid-template-rows: 1fr 1fr; }
        .cuad { display: flex; align-items: center; justify-content: center; font-size: 32px; font-weight: 900; font-family: 'Arial Black', sans-serif; }
        .azul { background: var(--azul-escudo); color: white; }
        .blanco { background: white; color: var(--azul-escudo); }

 

        /* Contenedor del mini escudo en las cabeceras */
        .wrapper-mini { width: 45px; height: 55px; position: absolute; top: 5px; left: 10px; cursor: pointer; }
        .wrapper-mini .escudo-perfecto { width: 100%; height: 100%; border: 2px solid var(--rojo-escudo); }
        .wrapper-mini .esc-top { border-bottom: 1.5px solid var(--rojo-escudo); }
        .wrapper-mini .esc-sol { width: 14px; height: 14px; bottom: -5px; border: 1px solid #000; }
        .wrapper-mini .esc-rayo { height: 12px; width: 1px; }
        .wrapper-mini .esc-mid { font-size: 0px; border-bottom: 1.5px solid var(--rojo-escudo); }
        .wrapper-mini .cuad { font-size: 11px; }

 

        /* --- CABECERA --- */
        .app-header {
            background-color: var(--azul-cabecera);
            height: 65px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 15px;
            color: var(--blanco);
            width: 100%;
            position: relative;
            border-bottom: 2px solid #000;
            flex-shrink: 0;
        }
        .header-title { font-size: 1.8rem; font-weight: bold; }
        .header-cart { position: absolute; right: 15px; width: 30px; height: 30px; background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24"><path d="M7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zM1 2v2h2l3.6 7.59-1.35 2.45c-.16.28-.25.61-.25.96 0 1.1.9 2 2 2h12v-2H7.42c-.14 0-.25-.11-.25-.25l.03-.12.9-1.63h7.45c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.08-.14.12-.31.12-.48 0-.55-.45-1-1-1H5.21l-.94-2H1zm16 16c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"/></svg>') center/contain no-repeat; cursor: pointer; }

 

        /* --- PANTALLAS --- */
        .screen {
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            display: none;
            flex-direction: column;
            background-color: var(--celeste-fondo);
        }
        .screen.active { display: flex; }
        .content { padding: 20px; flex: 1; overflow-y: auto; }

 

        .welcome-title { font-size: 3rem; font-weight: bold; margin: 30px 0 60px; color: var(--azul-boton); }
        .btn-elbio { background: var(--azul-boton); color: white; border: 2px solid #000; padding: 10px 20px; border-radius: 12px; font-weight: bold; font-size: 1.1rem; cursor: pointer; }
        .input-elbio { width: 100%; background: transparent; border: 3px solid #000; padding: 10px; border-radius: 5px; margin-bottom: 20px; font-weight: bold; outline: none; }

 

        .menu-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; margin-top: 40px; }
        .btn-cat { background: var(--azul-boton); color: white; border: 2px solid #000; height: 55px; border-radius: 12px; font-weight: bold; display: flex; align-items: center; justify-content: center; cursor: pointer; }
        .prod-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; }
        .prod-card { display: flex; flex-direction: column; align-items: center; text-align: center; margin-bottom: 20px; }
        .prod-name { color: white; font-weight: bold; margin-bottom: 8px; font-size: 1.1rem; text-shadow: 1px 1px #000; }

 

        .total-box { font-size: 1.4rem; font-weight: bold; margin: 30px 0; color: black; }
        .time-select { background: var(--azul-boton); color: white; border: 2px solid #000; padding: 8px; border-radius: 12px; font-weight: bold; width: 100%; max-width: 200px; cursor: pointer; }
        .card-input-box { background: var(--azul-boton); color: white; border: 2px solid #000; padding: 8px; border-radius: 12px; width: 160px; font-weight: bold; outline: none; }

 

        .toast { position: absolute; top: 80px; left: 20px; right: 20px; background: #b30000; color: white; padding: 10px; border-radius: 8px; text-align: center; font-weight: bold; display: none; z-index: 1000; border: 2px solid #000; }
</style>
</head>
<body>

 

<div class="app-container">
<div id="toast" class="toast"></div>

 

    <div id="screen-welcome" class="screen active" style="align-items: center; justify-content: center; padding: 20px;">
<div id="escudo-base"></div> <div class="welcome-title">ElbioYa</div>
<div style="display: flex; width: 100%; justify-content: space-between;">
<button class="btn-elbio" onclick="nav('screen-login')">Iniciar Sesión</button>
<button class="btn-elbio" onclick="nav('screen-register')">Crear cuenta</button>
</div>
</div>

 

    <div id="screen-login" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="text-align: center; margin-bottom: 30px;">Inicio de sesión</h2>
<label style="font-weight: bold;">Ingresar mail</label>
<input type="email" id="login-email" class="input-elbio" placeholder="usuario@elbiofernandez.edu.uy">
<label style="font-weight: bold;">Ingresar contraseña</label>
<input type="password" class="input-elbio" placeholder="••••">
<button class="btn-elbio" style="margin: 0 auto; display: block;" onclick="checkLogin()">Entrar</button>
</div>
</div>

 

    <div id="screen-register" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="text-align: center; margin-bottom: 30px;">Crear cuenta</h2>
<label style="font-weight: bold;">Ingresar mail del Elbio</label>
<input type="email" id="reg-email" class="input-elbio" placeholder="usuario@elbiofernandez.edu.uy">
<label style="font-weight: bold;">Crear contraseña</label>
<input type="password" class="input-elbio" placeholder="••••">
<button class="btn-elbio" style="margin: 0 auto; display: block;" onclick="checkReg()">Registrarse</button>
</div>
</div>

 

    <div id="screen-menu-home" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-welcome')"></div><div class="header-title">ElbioYa</div><div class="header-cart" onclick="nav('screen-cart')"></div></div>
<div class="content">
<h3>☰ Menú</h3>
<div class="menu-grid">
<div class="btn-cat" onclick="loadCat('Bebidas')">Bebidas</div>
<div class="btn-cat" onclick="loadCat('Almuerzo')">Almuerzo</div>
<div class="btn-cat" onclick="loadCat('Merienda')">Merienda</div>
<div class="btn-cat" onclick="loadCat('MenuDia')">Menú del día</div>
</div>
</div>
</div>

 

    <div id="screen-products" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-menu-home')"></div><div class="header-title">ElbioYa</div><div class="header-cart" onclick="nav('screen-cart')"></div></div>
<div class="content">
<h2 id="cat-title" style="color: black; margin-bottom: 20px;">Categoría</h2>
<div class="prod-grid" id="prod-container"></div>
<button class="btn-elbio" style="margin-top: 30px; width: 100%;" onclick="nav('screen-menu-home')">Volver</button>
</div>
</div>

 

    <div id="screen-cart" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-menu-home')"></div><div class="header-title">ElbioYa</div></div>
<div class="content" style="display: flex; flex-direction: column;">
<h2 style="color: black;">Carrito</h2>
<div id="cart-list" style="margin-top: 20px;"></div>
<div id="cart-total-nav" style="margin-top: auto; font-weight: bold; font-size: 1.2rem; margin-bottom: 20px; color: black;">Total: $0</div>
<button class="btn-elbio" id="btn-pedido" style="display: none; width: 100%;" onclick="nav('screen-pay-choice')">Hacer pedido</button>
</div>
</div>

 

    <div id="screen-pay-choice" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-menu-home')"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="color: black;">Pedido</h2>
<p style="margin: 25px 0 15px; font-weight: bold; font-size: 1.3rem;">Forma de pago</p>
<button class="btn-elbio" style="display: block; margin-bottom: 15px; width: 130px;" onclick="nav('screen-pay-cash')">Efectivo</button>
<button class="btn-elbio" style="width: 130px;" onclick="nav('screen-pay-card-step1')">Tarjeta</button>
</div>
</div>

 

    <div id="screen-pay-card-step1" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-pay-choice')"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="color: black; margin-bottom: 40px;">Tarjeta</h2>
<div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 25px;">
<label style="font-weight: bold;">Número tarjeta</label>
<input type="text" id="card-num-input" class="card-input-box" placeholder="XXXX-XXXX">
</div>
<div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 45px;">
<label style="font-weight: bold;">CVV</label>
<input type="password" id="card-cvv-input" class="card-input-box" style="width: 80px;" placeholder="***">
</div>
<button class="btn-elbio" onclick="validateCardDataAndNext()">Continuar</button>
</div>
</div>

 

    <div id="screen-pay-card-step2" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-pay-card-step1')"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="color: black;">Tarjeta</h2>
<div class="total-box" id="card-total-display">Total a pagar: $0</div>
<p style="font-weight: bold; margin-bottom: 12px;">Elegir hora de entrega:</p>
<select class="time-select" id="time-card"></select>
<button class="btn-elbio" style="display: block; margin-top: 50px; width: 130px;" onclick="validateTimeAndFinish('time-card')">Pagar</button>
</div>
</div>

 

    <div id="screen-pay-cash" class="screen">
<div class="app-header"><div class="wrapper-mini esc-h" onclick="nav('screen-pay-choice')"></div><div class="header-title">ElbioYa</div></div>
<div class="content">
<h2 style="color: black;">Efectivo</h2>
<div class="total-box" id="cash-total-display">Total a pagar en caja: $0</div>
<p style="font-weight: bold; margin-bottom: 12px;">Elegir hora de entrega:</p>
<select class="time-select" id="time-cash"></select>
<button class="btn-elbio" style="display: block; margin-top: 50px; width: 130px;" onclick="validateTimeAndFinish('time-cash')">Pedir</button>
</div>
</div>

 

    <div id="screen-success" class="screen">
<div class="app-header"><div class="header-title">ElbioYa</div></div>
<div class="content" style="display: flex; flex-direction: column; align-items: center; justify-content: center; text-align: center;">
<h1 style="font-size: 2.5rem; margin-bottom: 20px;">Pedido enviado</h1>
<p style="font-weight: bold; color: white; font-size: 1.2rem;">¡Gracias por tu compra, no olvides tu horario!</p>
<button class="btn-elbio" style="margin-top: 50px;" onclick="restart()">Inicio</button>
</div>
</div>
</div>

 

<script>
    const db = {
        Bebidas: [{n: "Coca-Cola", p: 90}, {n: "Sprite", p: 90}, {n: "Agua Salus", p: 65}],
        Almuerzo: [{n: "Nuggets", p: 150}, {n: "Milanesa", p: 240}, {n: "Tartas", p: 140}],
        Merienda: [{n: "Medialunas", p: 45}, {n: "Chipá", p: 35}, {n: "Trufas", p: 30}],
        MenuDia: [{n: "Menú del día", p: 230}]
    };
    let cart = [];

 

    // Genera el HTML exacto del escudo sin contenedores extras redundantes
    function buildShieldHTML() {
        return `
<div class="esc-top"><div class="esc-rayos-container"></div><div class="esc-sol"></div></div>
<div class="esc-mid">LUZ MAS LUZ</div>
<div class="esc-bot">
<div class="cuad azul">E</div><div class="cuad blanco">L</div>
<div class="cuad blanco">E</div><div class="cuad azul">F</div>
</div>`;
    }

 

    function injectRays(container) {
        const rays = container.querySelector('.esc-rayos-container');
        for(let i = -60; i <= 60; i += 20) {
            const r = document.createElement('div');
            r.className = 'esc-rayo'; r.style.transform = `translateX(-50%) rotate(${i}deg)`;
            rays.appendChild(r);
        }
    }

 

    function init() {
        // Escudo grande del inicio
        const base = document.getElementById('escudo-base');
        base.className = "escudo-perfecto";
        base.innerHTML = buildShieldHTML();
        injectRays(base);

 

        // Escudos chicos de las cabeceras
        document.querySelectorAll('.esc-h').forEach(container => {
            container.innerHTML = `<div class="escudo-perfecto">${buildShieldHTML()}</div>`;
            injectRays(container);
        });

 

        // Configuración de horarios
        const selects = ['time-card', 'time-cash'];
        selects.forEach(id => {
            const select = document.getElementById(id);
            select.innerHTML = '<option value="">Seleccionar...</option>';
            for(let h = 7; h <= 17; h++) {
                for(let m = 0; m < 60; m += 15) {
                    if(h === 7 && m < 45) continue;
                    if(h === 17 && m > 0) continue;
                    const hh = h.toString().padStart(2, '0');
                    const mm = m.toString().padStart(2, '0');
                    const opt = document.createElement('option');
                    opt.value = `${hh}:${mm}`; opt.text = `${hh}:${mm}`;
                    select.add(opt);
                }
            }
        });
    }

 

    function nav(id) {
        document.querySelectorAll('.screen').forEach(s => s.classList.remove('active'));
        document.getElementById(id).classList.add('active');
        if(id === 'screen-cart') renderCart();
    }

 

    function checkLogin() {
        if(document.getElementById('login-email').value.toLowerCase().endsWith('@elbiofernandez.edu.uy')) nav('screen-menu-home');
        else toast("Usa mail @elbiofernandez.edu.uy");
    }

 

    function checkReg() {
        if(document.getElementById('reg-email').value.toLowerCase().endsWith('@elbiofernandez.edu.uy')) nav('screen-menu-home');
        else toast("Usa mail @elbiofernandez.edu.uy");
    }

 

    function loadCat(cat) {
        document.getElementById('cat-title').innerText = cat === 'MenuDia' ? "Menú del día" : cat;
        const container = document.getElementById('prod-container');
        container.innerHTML = "";
        db[cat].forEach(p => {
            container.innerHTML += `
<div class="prod-card">
<div class="prod-name">${p.n}</div>
<button class="btn-elbio" style="font-size:0.9rem; padding:6px 14px;" onclick="add('${p.n}', ${p.p})">Añadir</button>
</div>`;
        });
        nav('screen-products');
    }

 

    function add(n, p) { cart.push({n, p}); toast("Añadido: " + n); }

 

    function renderCart() {
        const list = document.getElementById('cart-list');
        list.innerHTML = ""; let total = 0;
        cart.forEach((item) => {
            total += item.p;
            list.innerHTML += `<div style="display:flex; justify-content:space-between; margin-bottom:10px; font-weight:bold; background:rgba(255,255,255,0.3); padding:10px; border-radius:6px; color: black; border: 1.5px solid #000;">
<span>${item.n}</span><span>$${item.p}</span></div>`;
        });
        document.getElementById('cart-total-nav').innerText = "Total: $" + total;
        document.getElementById('card-total-display').innerText = "Total a pagar: $" + total;
        document.getElementById('cash-total-display').innerText = "Total a pagar en caja: $" + total;
        document.getElementById('btn-pedido').style.display = cart.length > 0 ? "block" : "none";
    }

 

    function validateCardDataAndNext() {
        if(document.getElementById('card-num-input').value.trim() === "" || document.getElementById('card-cvv-input').value.trim() === "") toast("Completa los datos.");
        else nav('screen-pay-card-step2');
    }

 

    function validateTimeAndFinish(id) {
        if(!document.getElementById(id).value) toast("Selecciona hora.");
        else nav('screen-success');
    }

 

    function toast(msg) {
        const t = document.getElementById('toast');
        t.innerText = msg; t.style.display = "block";
        setTimeout(() => t.style.display = "none", 2000);
    }

 

    function restart() { cart = []; nav('screen-menu-home'); }
    window.onload = init;
</script>
</body>
</html>

