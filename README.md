
# 🌐 ForoHub - Plataforma de Foros Educativos  

**ForoHub** es una plataforma desarrollada con Spring Boot que permite la creación y gestión de foros educativos. Diseñado con un enfoque en eficiencia, seguridad y facilidad de uso, ForoHub facilita la interacción entre usuarios, temas, cursos y respuestas.  

---

## 📑 Tabla de Contenidos  
1. 🛠️ [Características](#características)  
2. 🏗️ [Arquitectura del Sistema](#arquitectura-del-sistema)  
3. ⚙️ [Tecnologías Utilizadas](#tecnologías-utilizadas)  
4. 🚀 [Configuración e Instalación](#configuración-e-instalación)  
5. 🔗 [Endpoints Principales](#endpoints-principales)  
6. 📂 [Estructura del Proyecto](#estructura-del-proyecto)  
7. 📈 [Avance del Proyecto](#avance-del-proyecto)  
8. 🤝 [Contribución](#contribución)  
9. 📜 [Licencia](#licencia)  

---

## 🛠️ Características  
- 🔐 **Gestión de Usuarios**:  
  Sistema robusto de autenticación y autorización mediante tokens JWT, con soporte para múltiples roles (administrador, usuario).  

- 📝 **Gestión de Foros**:  
  Posibilidad de crear, visualizar y responder a temas en diferentes categorías.  

- 📘 **Gestión de Cursos**:  
  Asociación de cursos con temas y categorías para facilitar la organización temática.  

- 📄 **Documentación de la API**:  
  Explora y prueba los endpoints de la API utilizando Swagger (SpringDoc OpenAPI).  

- 🛡️ **Seguridad**:  
  Control de acceso basado en roles, garantizando que cada usuario acceda solo a los recursos autorizados.  

---

## 🏗️ Arquitectura del Sistema  
El proyecto está diseñado con una arquitectura por capas para facilitar su mantenimiento y escalabilidad:  
- 🖥️ **Capa API**: Contiene los controladores REST y configuraciones de seguridad.  
- ⚙️ **Capa de Dominio**: Define las entidades, servicios y repositorios.  
- 🗄️ **Capa de Infraestructura**: Incluye la configuración de base de datos, manejo de errores y seguridad.  

---

## ⚙️ Tecnologías Utilizadas  
- 🧑‍💻 **Lenguaje**: Java 21  
- 🌱 **Framework Principal**: Spring Boot  
- 🗃️ **Base de Datos**: MySQL  
- 📜 **Documentación**: SpringDoc OpenAPI (Swagger)  
- 🔐 **Seguridad**: JWT, OAuth  

---

## 🚀 Configuración e Instalación  

### **Prerrequisitos**  
- JDK 21  
- Maven  
- MySQL  

### **Pasos de Instalación**  
1. **Clonar el repositorio**:  
   ```bash  
   git clone https://github.com/usuario/tu-proyecto.git  
   cd tu-proyecto  
   ```  

2. **Configurar la base de datos**:  
   - Crear una base de datos en MySQL.  
   - Actualizar las credenciales en el archivo `application.properties`:  
     ```properties  
     spring.datasource.url=jdbc:mysql://localhost:3306/nombre_base_datos  
     spring.datasource.username=tu_usuario  
     spring.datasource.password=tu_contraseña  
     ```  

3. **Compilar y ejecutar la aplicación**:  
   ```bash  
   mvn clean install  
   mvn spring-boot:run  
   ```  

4. **Acceder a la documentación de la API**:  
   🌐 [Swagger UI](http://localhost:8080/swagger-ui.html)  

---

## 🔗 Endpoints Principales  

| **Método** | **Endpoint**       | **Descripción**                          | **Ejemplo de Cuerpo (JSON)**            |  
|------------|--------------------|------------------------------------------|----------------------------------------|  
| POST       | `/auth/login`      | Autenticar un usuario.                   | `{ "username": "admin", "password": "1234" }` |  
| GET        | `/users`           | Obtener lista de usuarios.               | -                                      |  
| GET        | `/topics`          | Listar todos los temas de foros.         | -                                      |  
| POST       | `/topics`          | Crear un nuevo tema en un foro.          | `{ "title": "Nuevo Tema", "message": "Texto" }` |  

---

## 📂 Estructura del Proyecto  

```plaintext
forohub/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com.desafio.forohub/
│   │   │       ├── controller/
│   │   │       ├── domain/
│   │   │       │   ├── curso/
│   │   │       │   ├── respuesta/
│   │   │       │   ├── topico/
│   │   │       │   └── usuario/
│   │   │       ├── infra/
│   │   │       │   ├── errors/
│   │   │       │   ├── security/
│   │   │       │   ├── service/
│   │   │       │   └── springdoc/
│   │   │       └── ForohubApplication.java
│   ├── resources/
│   │   ├── db.migration/
│   │   ├── static/
│   │   ├── templates/
│   │   └── application.properties
├── test/
```

---


## 📈 Avance del Proyecto  

### Funcionalidades Completadas  
- [x] Autenticación de usuarios.  
- [x] Creación de temas en foros.  
- [x] Asociación de cursos con temas.  

### Próximas Funcionalidades  
- [ ] Sistema de notificaciones.  
- [ ] Estadísticas de uso.  

---

## 🤝 Contribución  
¡Las contribuciones son bienvenidas! Para contribuir:  
1. Haz un fork del proyecto.  
2. Crea una nueva rama:  
   ```bash  
   git checkout -b feature/nueva-funcionalidad  
   ```  
3. Realiza tus cambios y haz un commit:  
   ```bash  
   git commit -m "Añadida nueva funcionalidad"  
   ```  
4. Sube tus cambios:  
   ```bash  
   git push origin feature/nueva-funcionalidad  
   ```  
5. Abre un pull request en el repositorio principal.  

---

## 📜 Licencia  
Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.  

