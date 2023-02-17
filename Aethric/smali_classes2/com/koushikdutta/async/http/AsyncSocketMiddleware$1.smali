.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field final synthetic val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

.field final synthetic val$lookup:Ljava/lang/String;

.field final synthetic val$sockets:Lcom/koushikdutta/async/util/ArrayDeque;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$lookup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 271
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    monitor-enter p1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$sockets:Lcom/koushikdutta/async/util/ArrayDeque;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$idleSocketHolder:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->val$lookup:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->access$000(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V

    .line 274
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
