.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->parsed([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->parsed([B)V

    return-void
.end method

.method public parsed([B)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 74
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->peekShort([BILjava/nio/ByteOrder;)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Lcom/koushikdutta/async/PushParser;

    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    return-void
.end method
