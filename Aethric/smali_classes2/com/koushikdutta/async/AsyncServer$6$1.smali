.class Lcom/koushikdutta/async/AsyncServer$6$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/AsyncServer$6;

.field final synthetic val$result:[Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer$6;[Ljava/net/InetAddress;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$6$1;->this$1:Lcom/koushikdutta/async/AsyncServer$6;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$6$1;->val$result:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$6$1;->this$1:Lcom/koushikdutta/async/AsyncServer$6;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer$6;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$6$1;->val$result:[Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
