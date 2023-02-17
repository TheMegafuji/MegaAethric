.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/callback/ValueCallback<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "HTTP"

    const-string v1, "exception"

    .line 98
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->onResult(Ljava/lang/Exception;)V

    return-void
.end method
