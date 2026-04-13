const fs = require('fs');
const path = 'index.html';
let content = fs.readFileSync(path, 'utf8');

function replace(pattern, replacement) {
  content = content.replace(pattern, replacement);
}

replace(/<button class="btn ghost menu-trigger" id="btnSidebarToggle"[^>]*>.*?<\/button>/s, '<button class="btn ghost menu-trigger" id="btnSidebarToggle" type="button" aria-label="Открыть меню">☰</button>');
replace(/<div class="subtitle" id="brandSubtitle">.*?<\/div>/s, '<div class="subtitle" id="brandSubtitle">Европейский исторический песенник</div>');
replace(/<input class="input catalog-top-search-input" id="topSearchInput" placeholder=".*?"/s, '<input class="input catalog-top-search-input" id="topSearchInput" placeholder="Искать…"');
replace(/<button class="btn primary catalog-top-search-btn" id="topSearchBtn" type="submit">.*?<\/button>/s, '<button class="btn primary catalog-top-search-btn" id="topSearchBtn" type="submit">Искать</button>');
replace(/<button class="btn primary catalog-top-search-menu-toggle" id="topSearchMenuToggle"[^>]*aria-label=".*?"><\/button>/s, '<button class="btn primary catalog-top-search-menu-toggle" id="topSearchMenuToggle" type="button" aria-haspopup="menu" aria-expanded="false" aria-label="Параметры поиска"></button>');
replace(/<nav class="ig-rail" aria-label=".*?">/s, '<nav class="ig-rail" aria-label="Основная навигация">');
replace(/<div class="ig-drawer-title" id="menuTitle">.*?<\/div>/s, '<div class="ig-drawer-title" id="menuTitle">Управление</div>');
replace(/<button class="btn ghost" id="btnMenuClose"[^>]*>.*?<\/button>/s, '<button class="btn ghost" id="btnMenuClose" type="button" aria-label="Закрыть меню">✕</button>');
replace(/<div class="ig-drawer-label" id="menuLocaleLabel">.*?<\/div>/s, '<div class="ig-drawer-label" id="menuLocaleLabel">Язык</div>');
replace(/<select class="select" id="localeSwitchMenu" aria-label=".*?">/s, '<select class="select" id="localeSwitchMenu" aria-label="Язык интерфейса">');
replace(/<div class="ig-drawer-label" id="menuMainLabel">.*?<\/div>/s, '<div class="ig-drawer-label" id="menuMainLabel">Разделы</div>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/" id="dNavCatalog">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/" id="dNavCatalog">Каталог</a>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/request" id="dNavRequest">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/request" id="dNavRequest">Добавить песню</a>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/favorites" id="dNavFav">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/favorites" id="dNavFav">Избранное</a>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/drafts" id="dNavDrafts">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/drafts" id="dNavDrafts">Мои черновики</a>');
replace(/<div class="ig-drawer-label" id="menuSettingsLabel">.*?<\/div>/s, '<div class="ig-drawer-label" id="menuSettingsLabel">Настройки</div>');
replace(/<button class="ig-drawer-link ig-drawer-button" id="btnThemeToggle" type="button">.*?<\/button>/s, '<button class="ig-drawer-link ig-drawer-button" id="btnThemeToggle" type="button">Включить белую тему</button>');
replace(/<button class="ig-drawer-link ig-drawer-button hidden" id="btnInstallApp" type="button">.*?<\/button>/s, '<button class="ig-drawer-link ig-drawer-button hidden" id="btnInstallApp" type="button">Установить приложение</button>');
replace(/<button class="ig-drawer-link ig-drawer-button" id="btnMenuLogin" type="button">.*?<\/button>/s, '<button class="ig-drawer-link ig-drawer-button" id="btnMenuLogin" type="button">Вход</button>');
replace(/<button class="ig-drawer-link ig-drawer-button hidden" id="btnMenuLogout" type="button">.*?<\/button>/s, '<button class="ig-drawer-link ig-drawer-button hidden" id="btnMenuLogout" type="button">Выход</button>');
replace(/<div class="ig-drawer-label" id="menuAdminLabel">.*?<\/div>/s, '<div class="ig-drawer-label" id="menuAdminLabel">Администрирование</div>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/admin\/songs" id="dNavAdminSongs">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/admin/songs" id="dNavAdminSongs">Песни</a>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/admin\/bulk-import" id="dNavAdminBulkImport">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/admin/bulk-import" id="dNavAdminBulkImport">Импорт</a>');
replace(/<a class="ig-drawer-link js-route-link hidden" href="#\/admin\/backgrounds" id="dNavAdminBackgrounds">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link hidden" href="#/admin/backgrounds" id="dNavAdminBackgrounds">Визуалы</a>');
replace(/<a class="ig-drawer-link js-route-link" href="#\/admin\/requests" id="dNavAdminRequests">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link" href="#/admin/requests" id="dNavAdminRequests">Заявки</a>');
replace(/<a class="ig-drawer-link js-route-link hidden" href="#\/admin\/users" id="dNavAdminUsers">.*?<\/a>/s, '<a class="ig-drawer-link js-route-link hidden" href="#/admin/users" id="dNavAdminUsers">Пользователи</a>');
replace(/<div class="dlgTitle" id="authTitle">.*?<\/div>/s, '<div class="dlgTitle" id="authTitle">Вход</div>');
replace(/<button class="btn ghost auth-mode-btn is-active" id="authModeLogin" type="button">.*?<\/button>/s, '<button class="btn ghost auth-mode-btn is-active" id="authModeLogin" type="button">Войти</button>');
replace(/<button class="btn ghost auth-mode-btn" id="authModeRegister" type="button">.*?<\/button>/s, '<button class="btn ghost auth-mode-btn" id="authModeRegister" type="button">Регистрация</button>');
replace(/<button class="btn ghost" id="btnAuthClose" type="button" aria-label="[^"]*">x<\/button>/s, '<button class="btn ghost" id="btnAuthClose" type="button" aria-label="Закрыть">x</button>');
replace(/<div class="fieldLabel" id="authLoginNicknameLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authLoginNicknameLabel">Ник или email (для входа)</div>');
replace(/<div class="fieldLabel" id="authLoginPasswordLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authLoginPasswordLabel">Пароль</div>');
replace(/<button class="btn" id="doLogin" type="button" value="ok">.*?<\/button>/s, '<button class="btn" id="doLogin" type="button" value="ok">Войти</button>');
replace(/<div class="fieldLabel" id="authRegisterNicknameLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authRegisterNicknameLabel">Ник</div>');
replace(/<div class="fieldLabel" id="authRegisterEmailLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authRegisterEmailLabel">Эл. почта</div>');
replace(/<div class="fieldLabel" id="authRegisterPasswordLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authRegisterPasswordLabel">Пароль</div>');
replace(/<div class="fieldLabel" id="authRegisterPasswordConfirmLabel">.*?<\/div>/s, '<div class="fieldLabel" id="authRegisterPasswordConfirmLabel">Повторите пароль</div>');
replace(/<button class="btn" id="doRegister" type="button" value="ok">.*?<\/button>/s, '<button class="btn" id="doRegister" type="button" value="ok">Регистрация</button>');
replace(/<div class="dlgTitle" id="promptTitle">.*?<\/div>/s, '<div class="dlgTitle" id="promptTitle">Промпт для ChatGPT</div>');
replace(/<button class="btn ghost" value="cancel" aria-label="[^"]*">x<\/button>/s, '<button class="btn ghost" value="cancel" aria-label="Закрыть">x</button>');
replace(/<div class="fieldLabel" id="promptTextLabel">.*?<\/div>/s, '<div class="fieldLabel" id="promptTextLabel">Текст</div>');
replace(/<button class="btn" id="promptCopy" type="button">.*?<\/button>/s, '<button class="btn" id="promptCopy" type="button">Копировать</button>');
replace(/<button class="btn primary" id="promptOpen" type="button">.*?<\/button>/s, '<button class="btn primary" id="promptOpen" type="button">Открыть ChatGPT</button>');

if (!content.includes('id="navRequest"')) {
  content = content.replace(
    /(<\/a>\s*<a class="ig-link js-route-link" href="#\/drafts" id="navDrafts">)/s,
    `</a>
    <a class="ig-link js-route-link" href="#/request" id="navRequest">
      <span class="ig-icon">✚</span><span class="ig-text">Добавить песню</span>
    </a>
    <a class="ig-link js-route-link" href="#/favorites" id="navFav">
      <span class="ig-icon">★</span><span class="ig-text">Избранное</span>
    </a>
    <a class="ig-link js-route-link" href="#/drafts" id="navDrafts">`
  );
}

content = content.replace(/<span class="ig-text">\?{3,}<\/span>/, '<span class="ig-text">Каталог</span>');
content = content.replace(/<span class="ig-text">\?\?\? \?\?\?\?\?\?\?\?<\/span>/, '<span class="ig-text">Мои черновики</span>');
content = content.replace(/<span class="ig-text">\?{3,}<\/span>/, '<span class="ig-text">Админка</span>');
content = content.replace(/<span class="yt-bottom-text">пїЅпїЅпїЅпїЅпїЅпїЅпїЅ<\/span>/, '<span class="yt-bottom-text">Каталог</span>');
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/request" id="mNavRequest">.*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/request" id="mNavRequest">
      <span class="yt-bottom-icon">✚</span><span class="yt-bottom-text">Добавить песню</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/favorites" id="mNavFav">.*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/favorites" id="mNavFav">
      <span class="yt-bottom-icon">★</span><span class="yt-bottom-text">Избранное</span>
    </a>`);
content = content.replace(/(<a class="yt-bottom-link js-route-link" href="#\/drafts" id="mNavDrafts">[\s\S]*?<img class="nav-icon-img nav-icon-img-drafts"[^>]*>\s*<\/span>)<span class="yt-bottom-text">.*?<\/span>\s*<\/a>/s, `$1<span class="yt-bottom-text">Черновики</span>
    </a>`);
content = content.replace(/(<a class="yt-bottom-link js-route-link hidden" href="#\/admin" id="mNavAdmin">[\s\S]*?<\/span>)<span class="yt-bottom-text">.*?<\/span>\s*<\/a>/s, `$1<span class="yt-bottom-text">Админка</span>
    </a>`);
content = content.replace(/<button class="yt-bottom-link" id="mNavMenu" type="button">.*?<\/button>/s, `<button class="yt-bottom-link" id="mNavMenu" type="button">
      <span class="yt-bottom-icon">☰</span><span class="yt-bottom-text" id="mNavMenuLabel">Меню</span>
    </button>`);

fs.writeFileSync(path, content, 'utf8');
