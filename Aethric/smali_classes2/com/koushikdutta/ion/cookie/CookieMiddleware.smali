.class public Lcom/koushikdutta/ion/cookie/CookieMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "CookieMiddleware.java"


# instance fields
.field ion:Lcom/koushikdutta/ion/Ion;

.field manager:Ljava/net/CookieManager;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->ion:Lcom/koushikdutta/ion/Ion;

    return-void
.end method

.method public static addCookies(Ljava/util/Map;Lcom/koushikdutta/async/http/Headers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/koushikdutta/async/http/Headers;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Cookie"

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/http/Headers;->addAll(Ljava/lang/String;Ljava/util/List;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private maybeInit()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->reinit()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->maybeInit()V

    .line 32
    invoke-virtual {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getCookieManager()Ljava/net/CookieManager;
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->maybeInit()V

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    return-object v0
.end method

.method public getCookieStore()Ljava/net/CookieStore;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    return-object v0
.end method

.method public onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->maybeInit()V

    .line 105
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;->response:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->put(Ljava/net/URI;Lcom/koushikdutta/async/http/Headers;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->maybeInit()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 93
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 94
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 95
    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->addCookies(Ljava/util/Map;Lcom/koushikdutta/async/http/Headers;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public put(Ljava/net/URI;Lcom/koushikdutta/async/http/Headers;)V
    .locals 5

    const-string v0, "Set-Cookie"

    .line 112
    invoke-direct {p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->maybeInit()V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 117
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    invoke-virtual {p2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    .line 122
    new-instance v1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    .line 123
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    goto :goto_0

    .line 127
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "HTTP/1.1 200 OK"

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public reinit()V
    .locals 11

    .line 47
    new-instance v0, Ljava/net/CookieManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->preferences:Landroid/content/SharedPreferences;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v5, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v5}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    const-string v6, "\n"

    .line 55
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 57
    array-length v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v4, v8

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_2

    .line 61
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 62
    invoke-virtual {v5, v9}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/ion/cookie/CookieMiddleware;->manager:Ljava/net/CookieManager;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/Headers;->getMultiMap()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "Ion"

    const-string v5, "unable to load cookies"

    .line 68
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-void
.end method
