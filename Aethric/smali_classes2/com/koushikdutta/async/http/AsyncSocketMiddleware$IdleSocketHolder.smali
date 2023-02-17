.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleSocketHolder"
.end annotation


# instance fields
.field idleTime:J

.field socket:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 2

    .line 98
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->this$0:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    .line 99
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    return-void
.end method
