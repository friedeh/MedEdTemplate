# Öffne das Template in einem neuen Verzeichnis
git2r::clone("https://github.com/friedeh/MedEdTemplate", "/Users/FriederichsH/sciebowl/Research/new-osf-test")

# Initialisiere ein neues Git-Repository im aktuellen Verzeichnis
repo <- git2r::init("/Users/FriederichsH/sciebowl/Research/new-osf-test")

# Füge alle Dateien im Verzeichnis zur Staging-Area hinzu
git2r::add(all = TRUE)

# Führe den ersten Commit aus
git2r::commit("Erster Commit")

# Setze den Remote-Repository-URL für das GitLab-Repository
git2r::remote_add("origin", url = "https://gitlab.ub.uni-bielefeld.de/medical-education/research/new-osf-test.git")

# Überprüfe den Remote-Repository-URL
git2r::remote_get_url("origin")
library(git2r)
library(usethis)

# Setze das Arbeitsverzeichnis (ersetze 'path/to/your/project' mit dem Pfad zu deinem Projekt)
setwd("path/to/your/project")

# Initialisiere ein Git-Repository im aktuellen Arbeitsverzeichnis
repo <- git2r::init(".")

# Konfiguriere deinen Namen und deine E-Mail-Adresse für Git
git2r::config(repo, user.name = "Hendrik Friederichs", user.email = "hendrik.friederichs@uni-bielefeld.de")

# Füge alle Dateien im Arbeitsverzeichnis zum Repository hinzu
git2r::add(repo, "*")

# Commit die Dateien
git2r::commit(repo, "Initial commit")

# Füge das GitLab-Repository als Remote-Repository hinzu (ersetze 'your-repo-url' mit der URL deines GitLab-Repositories)
git2r::remote_add(repo, "new-osf-test", "https://gitlab.ub.uni-bielefeld.de/medical-education/research/new-osf-test.git")

# Push die Änderungen zu GitLab
git2r::push(repo, "refs/heads/master", "origin", "refs/heads/master")