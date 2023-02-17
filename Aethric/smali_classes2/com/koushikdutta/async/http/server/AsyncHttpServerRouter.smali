.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/server/RouteMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$AsyncHttpServerRequestImpl;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;,
        Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;
    }
.end annotation


# static fields
.field static AppManifests:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/Future<",
            "Ljava/util/jar/Manifest;",
            ">;>;"
        }
    .end annotation
.end field

.field static mContentTypes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;

.field final routes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    .line 182
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->AppManifests:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    .line 154
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->callback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;

    return-void
.end method

.method public static checkWebSocketUpgrade(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Lcom/koushikdutta/async/http/WebSocket;
    .locals 6

    .line 76
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ","

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 89
    :cond_2
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    .line 93
    :cond_3
    new-instance p0, Lcom/koushikdutta/async/http/WebSocketImpl;

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method static declared-synchronized ensureManifest(Landroid/content/Context;)Ljava/util/jar/Manifest;
    .locals 9

    const-class v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->AppManifests:Ljava/util/Hashtable;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/Future;

    if-eqz v1, :cond_0

    .line 186
    invoke-interface {v1}, Lcom/koushikdutta/async/future/Future;->tryGet()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/jar/Manifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-object p0

    .line 189
    :cond_0
    :try_start_1
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 191
    :try_start_2
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v6, "META-INF/MANIFEST.MF"

    .line 192
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 193
    new-instance v7, Ljava/util/jar/Manifest;

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 194
    invoke-virtual {v1, v7}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v5, v2, v3

    .line 202
    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 203
    sget-object v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->AppManifests:Ljava/util/Hashtable;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 195
    monitor-exit v0

    return-object v7

    :catch_0
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v5, v2

    .line 198
    :goto_0
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v5, v4, v3

    .line 202
    invoke-static {v4}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 203
    sget-object v3, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->AppManifests:Ljava/util/Hashtable;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v2

    :goto_1
    :try_start_7
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v5, v4, v3

    .line 202
    invoke-static {v4}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 203
    sget-object v3, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->AppManifests:Ljava/util/Hashtable;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAssetStream(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;
    .locals 0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->getAssetStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;
    .locals 8

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;-><init>(ILjava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x6

    const-string v1, "/index.htm"

    const-string v2, "/index.html"

    const-string v3, "index.htm"

    const-string v4, "index.html"

    const-string v5, ".htm"

    const-string v6, ".html"

    .line 139
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 140
    aget-object v3, v1, v2

    .line 142
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 143
    new-instance v5, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v4, v3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;-><init>(ILjava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 168
    invoke-static {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->tryGetContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isClientCached(Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Ljava/lang/String;)Z
    .locals 3

    .line 208
    invoke-static {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->ensureManifest(Landroid/content/Context;)Ljava/util/jar/Manifest;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 213
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/jar/Attributes;

    const-string p3, "SHA-256-Digest"

    invoke-virtual {p0, p3}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    const-string p3, "\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 217
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-interface {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p2

    const-string p3, "ETag"

    invoke-virtual {p2, p3, p0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 219
    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    const-string p2, "If-None-Match"

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 223
    const-class p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error getting ETag for apk asset"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic lambda$directory$2(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 2

    .line 231
    invoke-interface {p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->getAssetStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 233
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    if-nez p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->path:Ljava/lang/String;

    invoke-static {p2, p3, p4, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->isClientCached(Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 240
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    aput-object p0, p1, p2

    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    const/16 p0, 0x130

    .line 241
    invoke-interface {p4, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 242
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    .line 246
    :cond_1
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->available:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Length"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 247
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->path:Ljava/lang/String;

    invoke-static {p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Type"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/16 p1, 0xc8

    .line 249
    invoke-interface {p4, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 250
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    iget p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->available:I

    int-to-long p2, p2

    new-instance v0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$ohKPKZMKn-rstv1_yybuICvMFTc;

    invoke-direct {v0, p4, p0}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$ohKPKZMKn-rstv1_yybuICvMFTc;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :cond_2
    :goto_0
    const/16 p0, 0x194

    .line 234
    invoke-interface {p4, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 235
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void
.end method

.method static synthetic lambda$directory$3(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 2

    .line 256
    invoke-interface {p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;->getMatcher()Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->getAssetStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 258
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/io/Closeable;

    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 265
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->path:Ljava/lang/String;

    invoke-static {p2, p3, p4, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->isClientCached(Landroid/content/Context;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x130

    .line 266
    invoke-interface {p4, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->available:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Content-Length"

    invoke-virtual {p1, p3, p2}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 271
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->getHeaders()Lcom/koushikdutta/async/http/Headers;

    move-result-object p1

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->path:Ljava/lang/String;

    invoke-static {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Content-Type"

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    const/16 p0, 0xc8

    .line 272
    invoke-interface {p4, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 275
    :goto_0
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    :cond_2
    :goto_1
    const/16 p0, 0x194

    .line 259
    invoke-interface {p4, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 260
    invoke-interface {p4}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;Ljava/lang/Exception;)V
    .locals 0

    .line 251
    invoke-interface {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/io/Closeable;

    .line 252
    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic lambda$websocket$0(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    .line 98
    invoke-static {p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->checkWebSocketUpgrade(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x194

    .line 100
    invoke-interface {p3, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->code(I)Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    .line 101
    invoke-interface {p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void

    .line 105
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;->onConnected(Lcom/koushikdutta/async/http/WebSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;)V

    return-void
.end method

.method public static tryGetContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->mContentTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V

    return-void
.end method

.method public addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->regex:Ljava/util/regex/Pattern;

    .line 57
    iput-object p3, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    .line 58
    iput-object p1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    .line 59
    iput-object p4, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    .line 61
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    monitor-enter p1

    .line 62
    :try_start_0
    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public directory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$4GOdt5lRiYwrG6To8qQhR73O5Ls;

    invoke-direct {v1, v0, p3, p1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$4GOdt5lRiYwrG6To8qQhR73O5Ls;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;)V

    const-string v2, "GET"

    invoke-virtual {p0, v2, p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    .line 255
    new-instance v1, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;

    invoke-direct {v1, v0, p3, p1}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$8NHRq583xICksDhtThhM84Yu64E;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "HEAD"

    invoke-virtual {p0, p1, p2, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->directory(Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public directory(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1

    .line 284
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;Ljava/io/File;Z)V

    const-string p2, "GET"

    invoke-virtual {p0, p2, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1

    const-string v0, "GET"

    .line 110
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public getCallback()Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->callback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Callback;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V
    .locals 1

    const-string v0, "POST"

    .line 114
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->addAction(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method

.method public removeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;

    .line 47
    iget-object v2, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;
    .locals 11

    .line 399
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->routes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;

    .line 402
    iget-object v3, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->method:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    iget-object v3, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->regex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 405
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iget-object v1, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    instance-of v1, v1, Lcom/koushikdutta/async/http/server/RouteMatcher;

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    .line 407
    invoke-virtual {v7, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 408
    iget-object v1, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    check-cast v1, Lcom/koushikdutta/async/http/server/RouteMatcher;

    invoke-interface {v1, p1, p2}, Lcom/koushikdutta/async/http/server/RouteMatcher;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 410
    :cond_2
    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;

    iget-object v8, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

    iget-object v9, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteInfo;->bodyCallback:Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$RouteMatch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpRequestBodyProvider;Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$1;)V

    monitor-exit v0

    return-object v1

    .line 413
    :cond_3
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public websocket(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    return-void
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;

    invoke-direct {v0, p2, p3}, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerRouter$d4H5jIo91iW6f17-pDHVvLT5vV0;-><init>(Ljava/lang/String;Lcom/koushikdutta/async/http/server/AsyncHttpServer$WebSocketRequestCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->get(Ljava/lang/String;Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;)V

    return-void
.end method
