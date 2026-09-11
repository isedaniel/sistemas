/*
// probamos fecth
// fetch devuelve una promesa, por lo que podemos usar then con un callback
// cuando la promesa se cumple, se ejecuta el calback que pasamos a then
const prom = fetch("https://jsonplaceholder.typicode.com/posts");
prom.then((resp) => {
    let jsonPromise = resp.json();
    jsonPromise.then((posts) => {
        console.log(posts[0]);
    })
})

// también se puede hacer un catch de errores
const badPromise = fetch("https://jsonplaceholder.typicode.com/postxs")
.then((resp) => {
    if (!resp.ok) {
        throw new Error("Error al enviar la solicitud");
    }
})
.catch((error) => {
    console.log(error.message);
});


// podemos usar la palabra clave await para que el intérprete espere a que se 
// cumpla una promesa antes de seguir la ejecución
// así estamos trabajando de forma sincrónica, que es más sencillo para nosotros
// para manejar los errores usamos un bloque try-catch
// ya no usamos then, sino que tenemos acceso a la respuesta directamente
try {
    let res = await fetch("https://jsonplaceholder.typicode.com/posts");
    
    if (!res.ok) {
        throw new Error("error en la solicitud");
    }

    let posts = await res.json();
    console.log(posts[0]);
}
catch (error) {
    console.log(error.message);
}

*/

// podemos enviar los posts a una tabla en el documento html

try {
    const cuerpoTabla = document.getElementById("cuerpo-tabla");
    let res = await fetch("https://jsonplaceholder.typicode.com/posts");
    
    if (!res.ok) {
        throw new Error("error en la solicitud");
    }

    let posts = await res.json();
    for (let i = 0; i < posts.length; ++i) {
        const title = document.createElement("td");
        title.textContent = posts[i].title;

        const body = document.createElement("td");
        body.textContent = posts[i].body;

        const row = document.createElement("tr");
        row.appendChild(title);
        row.appendChild(body);
        cuerpoTabla.appendChild(row);
    }
    console.log(posts[0]);
}
catch (error) {
    console.log(error.message);
}