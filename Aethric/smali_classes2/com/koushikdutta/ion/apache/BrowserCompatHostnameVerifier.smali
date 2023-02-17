.class public Lcom/koushikdutta/ion/apache/BrowserCompatHostnameVerifier;
.super Lcom/koushikdutta/ion/apache/AbstractVerifier;
.source "BrowserCompatHostnameVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/koushikdutta/ion/apache/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/koushikdutta/ion/apache/BrowserCompatHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method
