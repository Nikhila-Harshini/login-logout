# Login/Logout Demo (WAR)

Simple Java webapp demonstrating a login/logout flow using Servlets and JSP.

Contents
- `src/main/java/com/example/servlets/` — servlets (LoginServlet, LogoutServlet)
- `src/main/webapp/` — web resources (login.html, welcome.jsp, css/)
- `WEB-INF/web.xml` — servlet mappings
- `pom.xml` — Maven build (targets Java 21 via `<release>21`)

Prerequisites
- Java JDK 21 recommended for runtime and CI. (Your environment currently reported Java 25; building with a newer JDK is fine because POM uses `<release>21`.)
- Apache Maven 3.6+

Build
1. From the project root (`demo/`) run:

```cmd
mvn clean package
```

This will create `target/demo.war`.

Run (development)
- Start the built-in Jetty server (fast dev loop):

```cmd
mvn -f "%CD%\pom.xml" jetty:run -Djetty.port=8080
```

- Or set `JAVA_HOME` to a JDK 21 installation before starting Jetty (Windows cmd):

```cmd
set JAVA_HOME=C:\path\to\jdk-21
set PATH=%JAVA_HOME%\bin;%PATH%
mvn -f "%CD%\pom.xml" jetty:run -Djetty.port=8080
```

Open
- Login page: http://localhost:8080/login.html
- After successful login: `welcome.jsp` (session-protected)

Test credentials (demo)
- username: `admin`
- password: `admin123`

Notes & tips
- The app is compiled with `maven-compiler-plugin` `<release>21` to target Java 21 APIs. If you need to *require* JDK 21 for builds, add the Maven Enforcer plugin or Toolchains — I can add that for you.
- To silence a Jetty plugin warning about unknown parameters, remove unsupported plugin config keys from `pom.xml` (I can tidy this up on request).
- To deploy to Tomcat: build the WAR and drop `target/demo.war` into Tomcat's `webapps/` directory.

Stopping Jetty
- If you started Jetty from a terminal, stop it with Ctrl+C in that terminal. If started in a background/IDE terminal, stop the terminal session.

Next improvements (optional)
- Move credentials to a secure store or integrate real authentication
- Add server-side validation + in-page error messages
- Add unit/integration tests and a CI workflow that uses JDK 21
- Containerize with a Dockerfile for consistent deployment

If you want any of the optional items done (enforcer, CI, Dockerfile, or nicer UX), tell me which and I will add them.
