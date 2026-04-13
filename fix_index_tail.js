const fs = require('fs');
const path = 'index.html';
let content = fs.readFileSync(path, 'utf8');
content = content.replace(/<a class="logo" href="#\/" aria-label=".*?">/s, '<a class="logo" href="#/" aria-label="Перейти в каталог">');
content = content.replace(/<a class="ig-link js-route-link" href="#\/drafts" id="navDrafts">[\s\S]*?<\/a>/s, `<a class="ig-link js-route-link" href="#/drafts" id="navDrafts">
      <span class="ig-icon" aria-hidden="true">
        <img class="nav-icon-img nav-icon-img-drafts" src="./ui/assets/drafts-stack-icon.png" alt="" loading="lazy" decoding="async" />
      </span><span class="ig-text">Мои черновики</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/" id="mNavCatalog">[\s\S]*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/" id="mNavCatalog">
      <span class="yt-bottom-icon" aria-hidden="true">
        <svg class="nav-icon-svg" viewBox="0 0 24 24" focusable="false">
          <path d="M9 18V5l12-2v13"></path>
          <circle cx="6" cy="18" r="3" fill="currentColor" stroke="none"></circle>
          <circle cx="18" cy="16" r="3" fill="currentColor" stroke="none"></circle>
        </svg>
      </span><span class="yt-bottom-text">Каталог</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/request" id="mNavRequest">[\s\S]*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/request" id="mNavRequest">
      <span class="yt-bottom-icon">✚</span><span class="yt-bottom-text">Добавить песню</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/favorites" id="mNavFav">[\s\S]*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/favorites" id="mNavFav">
      <span class="yt-bottom-icon">★</span><span class="yt-bottom-text">Избранное</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link" href="#\/drafts" id="mNavDrafts">[\s\S]*?<\/a>/s, `<a class="yt-bottom-link js-route-link" href="#/drafts" id="mNavDrafts">
      <span class="yt-bottom-icon" aria-hidden="true">
        <img class="nav-icon-img nav-icon-img-drafts" src="./ui/assets/drafts-stack-icon.png" alt="" loading="lazy" decoding="async" />
      </span><span class="yt-bottom-text">Черновики</span>
    </a>`);
content = content.replace(/<a class="yt-bottom-link js-route-link hidden" href="#\/admin" id="mNavAdmin">[\s\S]*?<\/a>/s, `<a class="yt-bottom-link js-route-link hidden" href="#/admin" id="mNavAdmin">
      <span class="yt-bottom-icon" aria-hidden="true">
        <svg class="nav-icon-svg" viewBox="0 0 24 24" focusable="false">
          <path d="M12 3 19 6v6c0 4.8-2.9 7.8-7 9.5-4.1-1.7-7-4.7-7-9.5V6z"></path>
          <path d="m12 9.2 1.05 2.12 2.35.34-1.7 1.66.4 2.34L12 14.55l-2.1 1.11.4-2.34-1.7-1.66 2.35-.34z"></path>
        </svg>
      </span><span class="yt-bottom-text">Админка</span>
    </a>`);
content = content.replace(/<button class="yt-bottom-link" id="mNavMenu" type="button">[\s\S]*?<\/button>/s, `<button class="yt-bottom-link" id="mNavMenu" type="button">
      <span class="yt-bottom-icon">☰</span><span class="yt-bottom-text" id="mNavMenuLabel">Меню</span>
    </button>`);
fs.writeFileSync(path, content, 'utf8');
