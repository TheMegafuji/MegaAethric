.class Lcom/koushikdutta/async/AsyncServer$8;
.super Ljava/lang/Thread;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$queue:Ljava/util/PriorityQueue;

.field final synthetic val$selector:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$selector:Lcom/koushikdutta/async/SelectorWrapper;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 679
    :try_start_0
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$selector:Lcom/koushikdutta/async/SelectorWrapper;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/AsyncServer;->access$800(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method
