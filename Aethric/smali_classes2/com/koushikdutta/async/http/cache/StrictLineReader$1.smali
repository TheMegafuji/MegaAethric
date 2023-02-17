.class Lcom/koushikdutta/async/http/cache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/StrictLineReader;I)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->this$0:Lcom/koushikdutta/async/http/cache/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 175
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->buf:[B

    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->count:I

    .line 176
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;->buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method
