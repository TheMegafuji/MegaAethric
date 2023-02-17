.class public Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;,
        Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AsyncSSLSocketWrapper"

.field static defaultSSLContext:Ljavax/net/ssl/SSLContext;

.field static trustAllManagers:[Ljavax/net/ssl/TrustManager;

.field static trustAllSSLContext:Ljavax/net/ssl/SSLContext;

.field static trustAllVerifier:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field clientMode:Z

.field final dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field engine:Ljavax/net/ssl/SSLEngine;

.field finishedHandshake:Z

.field handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mEndException:Ljava/lang/Exception;

.field mEnded:Z

.field private mHost:Ljava/lang/String;

.field private mPort:I

.field mSink:Lcom/koushikdutta/async/BufferedDataSink;

.field mSocket:Lcom/koushikdutta/async/AsyncSocket;

.field mUnwrapping:Z

.field private mWrapping:Z

.field mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field final pending:Lcom/koushikdutta/async/ByteBufferList;

.field trustManagers:[Ljavax/net/ssl/TrustManager;

.field writeList:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_0

    const-string v4, "Default"

    .line 110
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    sput-object v4, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    goto :goto_0

    .line 109
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .line 114
    :try_start_1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    sput-object v5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    new-array v5, v2, [Ljavax/net/ssl/TrustManager;

    .line 115
    new-instance v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;

    invoke-direct {v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;-><init>()V

    aput-object v6, v5, v1

    .line 130
    sget-object v6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6, v3, v5, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    .line 133
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllSSLContext:Ljavax/net/ssl/SSLContext;

    new-array v0, v2, [Ljavax/net/ssl/TrustManager;

    .line 141
    new-instance v2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;

    invoke-direct {v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllManagers:[Ljavax/net/ssl/TrustManager;

    .line 152
    sget-object v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1, v3, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 153
    sget-object v0, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;->INSTANCE:Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$ubjG-VijEvtwYQFhJ5yeItKpb6I;

    sput-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllVerifier:Ljavax/net/ssl/HostnameVerifier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 266
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$6;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 450
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    .line 230
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    .line 231
    iput-object p6, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 232
    iput-boolean p7, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z

    .line 233
    iput-object p5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 234
    iput-object p4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    .line 236
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    .line 237
    iput p3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    .line 238
    invoke-virtual {p4, p7}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 239
    new-instance p2, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;-><init>(Lcom/koushikdutta/async/DataSink;)V

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    .line 240
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$4;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 251
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$5;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 263
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object p2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static connectSocket(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, p1, p2, v0, p3}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->connectSocket(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    return-object p0
.end method

.method public static connectSocket(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 8

    .line 192
    new-instance v6, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v6}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 193
    new-instance v7, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$1dQH0mH66myojjozXgZsvB_Buyk;-><init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZ)V

    invoke-virtual {p0, p1, p2, v7}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p0

    .line 218
    invoke-virtual {v6, p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Z

    return-object v6
.end method

.method public static getDefaultSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 161
    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 6

    .line 372
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 377
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 381
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 382
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->dataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-interface {p1, p0, v0}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 386
    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_a

    .line 387
    :cond_3
    iget-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->clientMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 391
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    check-cast v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 392
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 393
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v2, :cond_4

    .line 394
    new-instance v2, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 395
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, p1

    invoke-static {v4}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v5, v5, p1

    invoke-static {v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_4
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 399
    :cond_5
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> has been denied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_0
    move-object v2, v1

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 410
    :goto_1
    :try_start_2
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-nez p1, :cond_9

    .line 412
    new-instance p1, Lcom/koushikdutta/async/AsyncSSLException;

    invoke-direct {p1, v2}, Lcom/koushikdutta/async/AsyncSSLException;-><init>(Ljava/lang/Throwable;)V

    .line 413
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    .line 414
    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 415
    :cond_7
    throw p1

    .line 419
    :cond_8
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    .line 421
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-interface {p1, v1, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 422
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 424
    iget-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 427
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$7;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    .line 434
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->onDataAvailable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 438
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public static handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .locals 10

    move-object/from16 v0, p7

    .line 169
    new-instance v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 170
    iput-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 171
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    move-object v0, p0

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 181
    :try_start_0
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 182
    iget-object v0, v9, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    invoke-direct {v9, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$connectSocket$2(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 196
    invoke-interface {p1, p5, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    .line 200
    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllSSLContext:Ljavax/net/ssl/SSLContext;

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    .line 201
    :goto_0
    invoke-virtual {p5, p2, p3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    if-eqz p4, :cond_3

    sget-object p5, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllManagers:[Ljavax/net/ssl/TrustManager;

    move-object v5, p5

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    if-eqz p4, :cond_4

    sget-object v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->trustAllVerifier:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    move-object v6, v0

    const/4 v7, 0x1

    new-instance v8, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;

    invoke-direct {v8, p0, p1}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$KeVan__cz-Xy_wJHsz1YMOO-zIs;-><init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    move-object v1, p6

    move-object v2, p2

    move v3, p3

    .line 200
    invoke-static/range {v1 .. v8}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshake(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V

    return-void
.end method

.method static synthetic lambda$listenSecure$3(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 6

    .line 684
    :try_start_0
    invoke-static {p0, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->selfSignCertificate(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 685
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/security/KeyPair;

    .line 686
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/security/cert/Certificate;

    .line 688
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    move-object v0, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    iput-object p0, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 691
    invoke-interface {p6, p0}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$listenSecure$4([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V
    .locals 8

    .line 709
    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p0, "X.509"

    .line 710
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    const-string p0, "RSA"

    .line 712
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v2, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 714
    invoke-static/range {v2 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    iput-object p0, p2, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 717
    invoke-interface {p6, p0}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$listenSecure$5(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V
    .locals 5

    .line 727
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 728
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "key"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 730
    invoke-virtual {v0, v2, p0, v1, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    const-string v2, "X509"

    .line 732
    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    const-string v3, ""

    .line 733
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 735
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 736
    invoke-virtual {v3, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    .line 738
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 739
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 741
    invoke-static {p2, v0, p3, p4, p5}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p2

    .line 742
    new-instance p3, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;

    invoke-direct {p3, p0, p1, p2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$8;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServerSocket;)V

    iput-object p3, p6, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 765
    invoke-interface {p5, p0}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$null$1(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    .line 207
    invoke-interface {p3}, Lcom/koushikdutta/async/AsyncSSLSocket;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 212
    invoke-interface {p1, p2, p0}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {p1, p0, p3}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static listenSecure(Landroid/content/Context;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 681
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 682
    new-instance v9, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$tv7HNjAQaM3I8Dm-myNpOehEgO8;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, v8

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$tv7HNjAQaM3I8Dm-myNpOehEgO8;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p1, v9}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 694
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 7

    const/4 v0, 0x0

    .line 698
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->listenSecure(Lcom/koushikdutta/async/AsyncServer;[B[BLjava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;

    move-result-object p0

    return-object p0
.end method

.method public static listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 724
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 725
    new-instance v9, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$cApHIgZhJw-6dHOWyLUp4nYE_vI;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;)V

    invoke-virtual {p0, v9}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 768
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static listenSecure(Lcom/koushikdutta/async/AsyncServer;[B[BLjava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncSSLServerSocket;
    .locals 10

    .line 706
    new-instance v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;-><init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$1;)V

    .line 707
    new-instance v9, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object v4, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/-$$Lambda$AsyncSSLSocketWrapper$B8jUyREA-BuO3lgAQ849RSzVTqg;-><init>([B[BLcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p0, v9}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 720
    iget-object p0, v8, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$ObjectHolder;->held:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/AsyncSSLServerSocket;

    return-object p0
.end method

.method public static listenSecure(Lcom/koushikdutta/async/AsyncServer;Ljavax/net/ssl/SSLContext;Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;
    .locals 2

    .line 772
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$9;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$9;-><init>()V

    .line 786
    new-instance v1, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;

    invoke-direct {v1, p3, v0, p1, p4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$10;-><init>(ILcom/koushikdutta/async/http/SSLEngineSNIConfigurator;Ljavax/net/ssl/SSLContext;Lcom/koushikdutta/async/callback/ListenCallback;)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/koushikdutta/async/AsyncServer;->listen(Ljava/net/InetAddress;ILcom/koushikdutta/async/callback/ListenCallback;)Lcom/koushikdutta/async/AsyncServerSocket;

    move-result-object p0

    return-object p0
.end method

.method private report(Ljava/lang/Exception;)V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 509
    iput-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handshakeCallback:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    .line 510
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v3, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v3}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 511
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    .line 513
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 514
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 515
    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 521
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method private static selfSign(Ljava/security/KeyPair;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 613
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    .line 614
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 617
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 619
    new-instance v8, Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 620
    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 623
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 624
    invoke-virtual {p1, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 626
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 630
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v2, "SHA256WithRSA"

    invoke-direct {p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object p1

    .line 632
    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    move-object v3, v2

    move-object v4, v8

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 637
    new-instance p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Z)V

    .line 639
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "2.5.29.19"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 643
    new-instance p0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object p0

    invoke-virtual {v2, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static selfSignCertificate(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/security/KeyPair;",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "\n"

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-key.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x2

    .line 651
    :try_start_0
    invoke-static {p0}, Lcom/koushikdutta/async/util/StreamUtility;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 652
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 653
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v7, "X.509"

    .line 655
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    aget-object v3, v3, v2

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 657
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 659
    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v3, 0x800

    .line 664
    invoke-virtual {v0, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 665
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    .line 667
    invoke-static {v7, p1}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->selfSign(Ljava/security/KeyPair;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-static {p0, p1}, Lcom/koushikdutta/async/util/StreamUtility;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 677
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method addToPending(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 349
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method calculateAlloc(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3

    .line 444
    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    return p1
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    return-void
.end method

.method public end()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->end()V

    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mPort:I

    return v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 337
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->resume()V

    .line 578
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->onDataAvailable()V

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWriteableCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6

    .line 453
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 460
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 465
    :cond_2
    iget-boolean v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->finishedHandshake:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 467
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    .line 469
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 470
    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5, v4, v0}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 471
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 472
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 473
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 474
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-lez v4, :cond_4

    .line 475
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->writeList:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 476
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v5, :cond_5

    mul-int/lit8 v0, v0, 0x2

    .line 479
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v3, -0x1

    goto :goto_1

    .line 483
    :cond_5
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->calculateAlloc(I)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 484
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->handleHandshakeStatus(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 488
    :goto_0
    invoke-direct {p0, v4}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->report(Ljava/lang/Exception;)V

    .line 491
    :goto_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mSink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v3}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    .line 492
    iput-boolean p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->mWrapping:Z

    .line 493
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void
.end method
