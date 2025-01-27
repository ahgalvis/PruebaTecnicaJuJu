PruebaTecnicaJuJu 
Este es un proyecto de ejemplo que implementa una API RESTful para la gestión de libros y usuarios utilizando Node.js, Express y Sequelize.

Requisitos
Node.js (versión 14 o superior)
SQL Server
Instalación
Clona el repositorio:
sh
Copiar
Editar
git clone https://github.com/ahgalvis/PruebaTecnicaJuJu.git
cd PruebaTecnicaJuJu
Instala las dependencias:
sh
Copiar
Editar
npm install
Configura la base de datos en el archivo src/config/db.js con tus credenciales de SQL Server.

Ejecuta el script de creación de la base de datos:
Dentro del proyecto se incluye un archivo SQL para la creación de la base de datos y las tablas necesarias. Asegúrate de ejecutarlo en tu servidor de SQL Server antes de iniciar la aplicación.

Uso
Inicia el servidor:
sh
Copiar
Editar
node index.js
El servidor estará disponible en http://localhost:3000.

Endpoints
Autenticación
POST /api/login: Inicia sesión con un usuario existente.
Ejemplo de solicitud:

json
Copiar
Editar
{
  "NombreUsuario": "tu_nombre_de_usuario",
  "Contrasena": "tu_contrasena"
}
Nota: El usuario debe estar previamente creado en la tabla de Usuarios de la base de datos Libros.

Libros
POST /api/books: Crea un nuevo libro (requiere autenticación).
PUT /api/books/:id: Actualiza un libro existente (requiere autenticación).
GET /api/books: Obtiene todos los libros (requiere autenticación).
DELETE /api/books/:id: Elimina un libro (requiere autenticación).
Nota adicional
Se incluye un archivo SQL en este proyecto que contiene el script necesario para la creación de la base de datos, tablas y un usuario inicial. Ejecútalo antes de utilizar los endpoints de la API.
