.class public Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;
.super Ljava/lang/Object;
.source "SSLEngineSNIConfigurator.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;
    }
.end annotation


# instance fields
.field holders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->holders:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public configureEngine(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .locals 1

    .line 87
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->ensureHolder(Ljavax/net/ssl/SSLEngine;)Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->configureEngine(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V

    return-void
.end method

.method public createEngine(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2

    .line 66
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCore_OpenSSL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method ensureHolder(Ljavax/net/ssl/SSLEngine;)Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;
    .locals 2

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->holders:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;-><init>(Ljava/lang/Class;)V

    .line 80
    iget-object p1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;->holders:Ljava/util/Hashtable;

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
