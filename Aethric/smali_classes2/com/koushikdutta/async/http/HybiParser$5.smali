.class Lcom/koushikdutta/async/http/HybiParser$5;
.super Ljava/lang/Object;
.source "HybiParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1}, Lcom/koushikdutta/async/http/HybiParser;->access$700(Lcom/koushikdutta/async/http/HybiParser;)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/HybiParser;->access$602(Lcom/koushikdutta/async/http/HybiParser;[B)[B

    .line 196
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1}, Lcom/koushikdutta/async/http/HybiParser;->access$600(Lcom/koushikdutta/async/http/HybiParser;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 198
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1}, Lcom/koushikdutta/async/http/HybiParser;->access$800(Lcom/koushikdutta/async/http/HybiParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    iget-object p2, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->report(Ljava/lang/Exception;)V

    .line 202
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HybiParser;->access$502(Lcom/koushikdutta/async/http/HybiParser;I)I

    .line 205
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$5;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    return-void
.end method
