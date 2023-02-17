.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$2$1;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 293
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    :cond_0
    return-void
.end method
