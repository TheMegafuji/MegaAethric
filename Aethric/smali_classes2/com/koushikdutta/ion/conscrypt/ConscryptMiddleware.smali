.class public Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "ConscryptMiddleware.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "IonConscrypt"

.field static initialized:Z

.field static final lock:Ljava/lang/Object;

.field static success:Z


# instance fields
.field context:Landroid/content/Context;

.field enabled:Z

.field instanceInitialized:Z

.field middleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->enabled:Z

    .line 93
    iput-object p2, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->middleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->context:Landroid/content/Context;

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6

    .line 43
    :try_start_0
    sget-object v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    sget-boolean v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialized:Z

    if-eqz v1, :cond_0

    .line 45
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 47
    sput-boolean v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialized:Z

    const-string v2, "GmsCore_OpenSSL"

    .line 50
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    sput-boolean v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->success:Z

    .line 52
    monitor-exit v0

    return-void

    .line 55
    :cond_1
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 56
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object p0

    const-string v4, "GmsCore_OpenSSL"

    .line 61
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    const-string v5, "GmsCore_OpenSSL"

    .line 62
    invoke-static {v5}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 63
    array-length p0, p0

    invoke-static {v4, p0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 64
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 65
    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 66
    sput-boolean v1, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->success:Z

    .line 67
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    const-string v0, "IonConscrypt"

    const-string v1, "Conscrypt initialization failed."

    .line 70
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 1

    .line 34
    iput-boolean p1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->enabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->instanceInitialized:Z

    .line 37
    iget-object p1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->middleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    :cond_0
    return-void
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->enabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialize()V

    .line 104
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/SimpleMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->initialize(Landroid/content/Context;)V

    .line 76
    sget-boolean v0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->success:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->instanceInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->instanceInitialized:Z

    :try_start_0
    const-string v0, "TLS"

    const-string v1, "GmsCore_OpenSSL"

    .line 79
    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->middleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getDefaultSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;->middleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->setSSLContext(Ljavax/net/ssl/SSLContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
