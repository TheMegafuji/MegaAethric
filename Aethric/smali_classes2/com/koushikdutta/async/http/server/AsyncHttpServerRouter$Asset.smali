.class public Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;
.super Ljava/lang/Object;
.source "AsyncHttpServerRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Asset"
.end annotation


# instance fields
.field public available:I

.field public inputStream:Ljava/io/InputStream;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->available:I

    .line 120
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->inputStream:Ljava/io/InputStream;

    .line 121
    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter$Asset;->path:Ljava/lang/String;

    return-void
.end method
