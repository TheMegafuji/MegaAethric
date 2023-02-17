.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$NYUWP6Eftp0IGCDW-jYP0LBu_1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$NYUWP6Eftp0IGCDW-jYP0LBu_1c;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$NYUWP6Eftp0IGCDW-jYP0LBu_1c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$NYUWP6Eftp0IGCDW-jYP0LBu_1c;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$NYUWP6Eftp0IGCDW-jYP0LBu_1c;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->lambda$send$2$WebSocketImpl(Ljava/lang/String;)V

    return-void
.end method
