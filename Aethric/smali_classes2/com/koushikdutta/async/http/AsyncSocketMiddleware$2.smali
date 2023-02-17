.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 285
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method
