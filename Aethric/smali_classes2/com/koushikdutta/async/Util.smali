.class public Lcom/koushikdutta/async/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static SUPRESS_DEBUG_EXCEPTIONS:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    const/4 v0, 0x0

    .line 22
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v1

    const-string v2, "handler: "

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 23
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 24
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 37
    sget-boolean p0, Lcom/koushikdutta/async/Util;->SUPRESS_DEBUG_EXCEPTIONS:Z

    if-eqz p0, :cond_1

    return-void

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 50
    sget-boolean p0, Lcom/koushikdutta/async/Util;->SUPRESS_DEBUG_EXCEPTIONS:Z

    if-eqz p0, :cond_3

    :cond_3
    return-void
.end method

.method public static end(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Exception;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static end(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 247
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static getWrappedDataEmitter(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Class;)Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 229
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 231
    :cond_0
    instance-of v0, p0, Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;

    if-eqz v0, :cond_1

    .line 232
    check-cast p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    invoke-interface {p0}, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/koushikdutta/async/AsyncSocket;",
            ">(",
            "Lcom/koushikdutta/async/AsyncSocket;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 220
    :cond_0
    instance-of v0, p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    invoke-interface {p0}, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p0

    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/koushikdutta/async/Util$3;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/Util$3;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 130
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 131
    new-instance v0, Lcom/koushikdutta/async/Util$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/Util$4;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 138
    new-instance v0, Lcom/koushikdutta/async/Util$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/Util$5;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 153
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 154
    new-instance p0, Lcom/koushikdutta/async/Util$6;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/Util$6;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public static pump(Ljava/io/File;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 176
    new-instance p0, Lcom/koushikdutta/async/Util$7;

    invoke-direct {p0, v0, p2}, Lcom/koushikdutta/async/Util$7;-><init>(Ljava/io/InputStream;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-static {v0, p1, p0}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 172
    invoke-interface {p2, p0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 190
    invoke-interface {p2, p0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 7

    .line 61
    new-instance v6, Lcom/koushikdutta/async/Util$1;

    invoke-direct {v6, p4}, Lcom/koushikdutta/async/Util$1;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 72
    new-instance p4, Lcom/koushikdutta/async/Util$2;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/Util$2;-><init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 114
    invoke-interface {p3, p4}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 116
    invoke-interface {p3, v6}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 118
    invoke-interface {p4}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    return-void
.end method

.method public static pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 57
    invoke-static {p0, v0, v1, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public static stream(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 165
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 166
    invoke-static {p1, p0, p2}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public static writable(Lcom/koushikdutta/async/DataSink;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/Util;->writable(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public static writable(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 258
    invoke-interface {p0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_0
    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 196
    new-instance v0, Lcom/koushikdutta/async/Util$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/Util$8;-><init>(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 206
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 209
    array-length v0, p1

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 213
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 214
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
