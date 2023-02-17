.class public Lcom/koushikdutta/async/http/body/FileBody;
.super Ljava/lang/Object;
.source "FileBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/binary"


# instance fields
.field contentType:Ljava/lang/String;

.field file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 18
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/binary"

    .line 18
    iput-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->file:Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/koushikdutta/async/http/body/FileBody;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/FileBody;->get()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 36
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public readFullyOnRequest()Z
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/koushikdutta/async/http/body/FileBody;->file:Ljava/io/File;

    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/File;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
