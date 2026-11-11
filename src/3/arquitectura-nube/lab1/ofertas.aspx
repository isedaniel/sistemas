<%@ Page Language="C#" ResponseEncoding="utf-8" %>
<script runat="server">
DateTime ahora;
int visitas;
Random azar = new Random();
System.Globalization.CultureInfo ar = new System.Globalization.CultureInfo("es-AR");

string[] ofertas = {
    "Domingo: &iexcl;Atenci&oacute;n online 24/7! Descuentos especiales en la web",
    "Lunes: 20% OFF corporativo en Perif&eacute;ricos seleccionados",
    "Martes: 2x1 en Insumos para Impresi&oacute;n y tintas",
    "Mi&eacute;rcoles: 15% OFF en Monitores de alta definici&oacute;n",
    "Jueves: Env&iacute;o gratis en Equipos para Oficina en compras mayores a $100.000",
    "Viernes: 25% OFF en Combos de Teclado + Mouse",
    "S&aacute;bado: Asesoramiento t&eacute;cnico sin cargo con tu compra"
};

string[] productos = {
    "Teclado Logitech K120",
    "Mouse Logitech M100",
    "CPU Ryzen 3 + 8G Ram + SSD 240G",
    "Monitor Philips 19\"",
    "Tinta Alternativa x 250ml"
};

void Page_Load(object sender, EventArgs e)
{
    ahora = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTime.UtcNow, "Argentina Standard Time");

    Application.Lock();
    visitas = (Application["visitas"] == null ? 0 : (int)Application["visitas"]) + 1;
    Application["visitas"] = visitas;
    Application.UnLock();
}
</script>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <title>Ofertas del D&iacute;a | &Aacute;rea Inform&aacute;tica</title>
    <style>
        :root {
            --primary: #0f172a;
            --accent: #0284c7;
            --accent-hover: #0369a1;
            --bg-body: #f8fafc;
            --card-bg: #ffffff;
            --text-dark: #334155;
            --text-light: #f8fafc;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: var(--bg-body);
            color: var(--text-dark);
            line-height: 1.6;
        }

        header {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: var(--text-light);
            padding: 40px 20px;
            text-align: center;
            border-bottom: 4px solid var(--accent);
        }

        header h1 {
            margin: 0;
            font-size: 2.2rem;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        header p {
            margin-top: 8px;
            color: #94a3b8;
            font-size: 1.1rem;
        }

        nav {
            background-color: #020617;
            padding: 12px;
            text-align: center;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        nav a {
            color: #cbd5e1;
            font-weight: 600;
            margin: 0 15px;
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 6px;
            transition: background 0.3s, color 0.3s;
        }

        nav a:hover {
            background-color: var(--accent);
            color: #ffffff;
        }

        .container {
            max-width: 1000px;
            margin: 30px auto;
            padding: 0 20px;
        }

        .section-title {
            font-size: 1.5rem;
            color: var(--primary);
            border-left: 4px solid var(--accent);
            padding-left: 10px;
            margin-bottom: 20px;
        }

        .oferta-banner {
            background: linear-gradient(90deg, #eab308 0%, #ca8a04 100%);
            color: #0f172a;
            padding: 20px;
            border-radius: 8px;
            font-size: 1.25rem;
            font-weight: 700;
            margin-bottom: 30px;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
        }

        .table-container {
            background: #ffffff;
            border-radius: 8px;
            border: 1px solid #e2e8f0;
            overflow: hidden;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: var(--primary);
            color: var(--text-light);
            text-align: left;
            padding: 12px 16px;
            font-size: 0.95rem;
            text-transform: uppercase;
        }

        td {
            padding: 12px 16px;
            border-bottom: 1px solid #e2e8f0;
            color: var(--text-dark);
        }

        tr:last-child td {
            border-bottom: none;
        }

        .badge-stock {
            background-color: #dcfce7;
            color: #166534;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 12px;
            font-size: 0.9rem;
        }

        .info-box {
            background: #ffffff;
            border-left: 4px solid var(--accent);
            padding: 15px 20px;
            border-radius: 6px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.04);
            margin-bottom: 25px;
        }

        .btn-back {
            display: inline-block;
            background-color: var(--primary);
            color: #ffffff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: 600;
            transition: background 0.2s;
        }

        .btn-back:hover {
            background-color: var(--accent);
        }

        footer {
            background-color: #0f172a;
            color: #94a3b8;
            text-align: center;
            font-size: 13px;
            padding: 25px;
            margin-top: 50px;
            border-top: 1px solid #1e293b;
        }

        footer b {
            color: var(--accent);
        }
    </style>
</head>

<body>
    <nav>
        <a href="index.html">Inicio</a>
        <a href="ofertas.aspx">Ofertas del d&iacute;a</a>
    </nav>
    <header>
        <h1>&Aacute;rea Inform&aacute;tica &middot; Promociones</h1>
        <p><%= ahora.ToString("dddd d 'de' MMMM 'de' yyyy, HH:mm:ss", ar) %> (hora de Buenos Aires)</p>
    </header>
    <div class="container">
        <div class="oferta-banner">
            <%= ofertas[(int)ahora.DayOfWeek] %>
        </div>

        <h2 class="section-title">Stock en Tiempo Real</h2>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Unidades Disponibles</th>
                    </tr>
                </thead>
                <tbody>
                    <% foreach (string p in productos) { %>
                    <tr>
                        <td><strong><%= p %></strong></td>
                        <td><span class="badge-stock"><%= azar.Next(1, 30) %> unidades</span></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

        <div class="info-box">
            <p>Sos la visita n&uacute;mero <b><%= visitas %></b> registrada desde que se inici&oacute; el servidor web.</p>
        </div>

        <p><a href="index.html" class="btn-back">&larr; Volver al cat&aacute;logo principal</a></p>
    </div>
    <footer>
        P&aacute;gina <b>din&aacute;mica</b> generada por el servidor <b><%= Environment.MachineName %></b>
        (hora UTC del servidor: <%= DateTime.UtcNow.ToString("HH:mm:ss") %>)<br>
        Tu IP de visitante: <%= Request.UserHostAddress %><br>
        Daniel Ise &middot; Arquitectura de Computaci&oacute;n en la Nube &middot; UdeMM
    </footer>
</body>
</html>