let USUARIOS;
const $ = (id) => document.getElementById(id);
const usuariosDiv = $("usuarios");

async function getUsers(url) {
    try {
        const res = await fetch(url);

        if (!res.ok) {
            throw new Error("Error en la solicitud");
        }

        USUARIOS = await res.json();
        renderUsers(USUARIOS);
    } catch (error) {
        usuariosDiv.innerText = error;
        throw error;
    }

}
getUsers("https://jsonplaceholder.typicode.com/users");

function renderUsers(usuarios) {
    usuariosDiv.innerHTML = "";
    usuarios.forEach(user => {
        const name = document.createElement("h3");
        name.innerText = user.name;
        usuariosDiv.appendChild(name);

        const username = document.createElement("p");
        username.innerText = `Usuario: ${user.username}`;
        usuariosDiv.appendChild(username);

        const mail = document.createElement("p");
        mail.innerText = `Mail: ${user.email}`;
        usuariosDiv.appendChild(mail);
    });
}

const filtrar = () => {
    const filtro = $("filtro");
    const filtrados = USUARIOS.filter(u => u.name.includes(filtro.value));
    renderUsers(filtrados);
}

const botonFiltro = $("botonFiltrar");
botonFiltro.addEventListener("click", filtrar);

const botonError = $("botonError");
botonError.addEventListener("click", () => getUsers("https://jsonplaceholder.typicode.com/usuarios"));