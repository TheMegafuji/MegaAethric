.class public final synthetic Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/server/-$$Lambda$AsyncHttpServerResponseImpl$QH1IELoIT3R4NVT5-YI1_ptCYdo;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->lambda$initFirstWrite$1$AsyncHttpServerResponseImpl(ZLjava/lang/Exception;)V

    return-void
.end method
