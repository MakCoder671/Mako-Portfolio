# Mako Portfolio

A responsive portfolio built with HTML, CSS, JavaScript, CFML, and the Lucee server.

## Run the website

1. Install Java 21 and CommandBox.
2. Open a terminal in this project folder.
3. Run `box server start`.
4. Open `http://localhost:8080` if the browser does not open automatically.

Run `box server stop` when you want to stop Lucee.

## File map

- `Application.cfc` contains settings shared by the entire CFML application.
- `server.json` tells CommandBox to run this project with Lucee.
- `index.cfm` contains the Home page.
- `about.cfm` contains the About page.
- `projects.cfm` contains the Projects page.
- `contact.cfm` contains the Contact page and its form.
- `css/` contains the shared and mobile styles.
- `js/` contains the browser JavaScript for each page.
- `assets/` contains the portrait and certificate PDFs.

The next backend phase will add separate `api/`, `components/`, and `database/` folders for securely processing and saving contact inquiries.
