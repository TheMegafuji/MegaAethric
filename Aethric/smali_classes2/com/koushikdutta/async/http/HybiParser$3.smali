.class Lcom/koushikdutta/async/http/HybiParser$3;
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

    .line 166
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p1}, Lcom/koushikdutta/async/http/HybiParser;->access$200(Lcom/koushikdutta/async/http/HybiParser;)I

    move-result p1

    new-array p1, p1, [B

    .line 170
    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 172
    :try_start_0
    iget-object p2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->access$300(Lcom/koushikdutta/async/http/HybiParser;[B)V
    :try_end_0
    .catch Lcom/koushikdutta/async/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    iget-object p2, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/HybiParser;->report(Ljava/lang/Exception;)V

    .line 176
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;->printStackTrace()V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$3;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    return-void
.end method
