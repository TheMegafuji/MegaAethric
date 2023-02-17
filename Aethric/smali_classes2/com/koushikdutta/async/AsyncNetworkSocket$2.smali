.class Lcom/koushikdutta/async/AsyncNetworkSocket$2;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V

    return-void
.end method
