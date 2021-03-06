(require-package 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
(setq elfeed-feeds
      '(
        ( "http://songshuhui.net/feed" 松鼠会)
        (        "http://feed.feedsky.com/clzzxf" 左岸读书)
        (        "http://feed.gtdlife.com" GTD Life)
        (        "http://feed.feedsky.com/bxlxwxf" 不许联想)
        (        "http://www.ftchinese.com/rss/feed" 金融时报)
        (        "http://chinese.wsj.com/gb/rss01.xml" 华尔街时报)
        ("http://www.guao.hk/feed" 谷奥)
        ("http://blog.binchen.org/rss.xml" 陈斌博客)
        ("http://planet.emacsen.org/atom.xml" emacs news)
        ("http://www.ehow.com/feed/ehow-home.rss" E how to)
        ("http://www.appinn.com/category/mac/feed/" 小众软件 osx)
        ("http://jbguide.me/feed/" 越狱指南)
        ("http://emacsrocks.com/atom.xml" Emacs rocks)
        ("http://ielts-simon.com/ielts-help-and-english-pr/atom.xml" IELTS)
        ("http://www.abc.net.au/news/feed/45910/rss.xml" Top story)
        ))
(provide 'init-elfeed)
