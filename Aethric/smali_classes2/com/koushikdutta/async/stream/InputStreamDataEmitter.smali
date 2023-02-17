.class public Lcom/koushikdutta/async/stream/InputStreamDataEmitter;
.super Ljava/lang/Object;
.source "InputStreamDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field callback:Lcom/koushikdutta/async/callback/DataCallback;

.field endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field inputStream:Ljava/io/InputStream;

.field mToAlloc:I

.field paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field pumper:Ljava/lang/Runnable;

.field server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->mToAlloc:I

    .line 74
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 75
    new-instance v0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$2;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pumper:Ljava/lang/Runnable;

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 24
    iput-object p2, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->inputStream:Ljava/io/InputStream;

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method private doResume()V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->pumper:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter$1;-><init>(Lcom/koushikdutta/async/stream/InputStreamDataEmitter;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->report(Ljava/lang/Exception;)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->paused:Z

    .line 53
    invoke-direct {p0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->doResume()V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method
