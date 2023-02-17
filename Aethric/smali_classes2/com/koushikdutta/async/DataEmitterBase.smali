.class public abstract Lcom/koushikdutta/async/DataEmitterBase;
.super Ljava/lang/Object;
.source "DataEmitterBase.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private ended:Z

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public final getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->ended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->ended:Z

    .line 15
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/koushikdutta/async/DataEmitterBase;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method
