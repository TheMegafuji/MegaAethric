.class public final synthetic Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$5NBIaX1nvYBX3mbDX2Puj7dd1Lg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$5NBIaX1nvYBX3mbDX2Puj7dd1Lg;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$5NBIaX1nvYBX3mbDX2Puj7dd1Lg;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$5NBIaX1nvYBX3mbDX2Puj7dd1Lg;->f$0:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/-$$Lambda$WebSocketImpl$5NBIaX1nvYBX3mbDX2Puj7dd1Lg;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->lambda$send$0$WebSocketImpl([B)V

    return-void
.end method
