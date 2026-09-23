// Vie privé et sécurité
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.fingerprintingProtection", true);
user_pref("dom.security.https_only_mode", true);

// Barre de recherche sugestions
user_pref("browser.urlbar.suggest.searches", false);

// MOTS DE PASSE
user_pref("signon.rememberSignons", false);

// DNS -> HTTPS
user_pref("network.trr.mode", 3); // Mode 3 : ne jamais utiliser le DNS non chiffré
user_pref("network.trr.uri", "https://firefox.dns.nextdns.io/");

// Désactive l'envoi global des données
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);

// Désactive les pings de télémétrie de base
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,_"); // Envoie les requêtes dans le vide
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// Désactive la couverture de code
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");

// Désactive les études
user_pref("experiments.activeExperiment", false);
user_pref("experiments.supported", false);
user_pref("network.allow-experiments", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

// Désactive les recommandations de recherche non voulues
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.suggest.history", true);
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.quicksuggest.enabled", false);

// Laisse moi fermer mon firefox
user_pref("browser.warnOnQuitShortcut", false);

// Netoyer page d'acceuil
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.showWeather", false);
user_pref("browser.newtabpage.activity-stream.system.showWeather", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);

// Pas d'IA
user_pref("browser.ml.enable", false);
user_pref("browser.ml.chat.enabled", false);
user_pref("browser.ml.pageAssist.enabled", false);

// Pas de navigateur par défaut
user_pref("browser.shell.checkDefaultBrowser", false);

//Pas de UITour
user_pref("UITour", false);