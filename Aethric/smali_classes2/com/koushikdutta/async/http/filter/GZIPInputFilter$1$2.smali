.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->next()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 95
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean p1, p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz p1, :cond_0

    .line 96
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 99
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 103
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-static {p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->access$100(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    return-void
.end method
