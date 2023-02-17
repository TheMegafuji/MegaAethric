.class final Lcom/koushikdutta/async/Util$5;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field reported:Z

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic val$sink:Lcom/koushikdutta/async/DataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/koushikdutta/async/Util$5;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    iput-object p3, p0, Lcom/koushikdutta/async/Util$5;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 142
    iget-boolean v0, p0, Lcom/koushikdutta/async/Util$5;->reported:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/koushikdutta/async/Util$5;->reported:Z

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->val$sink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/Util$5;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
