.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$1:[B

    iput p3, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$2:I

    iput p4, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$1:[B

    iget v2, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$2:I

    iget v3, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$L8147SyvIidmkQMF6CPGrqziDKk;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/WebSocketImpl;->lambda$send$1$WebSocketImpl([BII)V

    return-void
.end method
