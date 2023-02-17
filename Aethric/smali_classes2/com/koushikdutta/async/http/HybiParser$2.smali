.class Lcom/koushikdutta/async/http/HybiParser$2;
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

    .line 158
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$2;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$2;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/HybiParser;->access$100(Lcom/koushikdutta/async/http/HybiParser;B)V

    .line 162
    iget-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$2;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    return-void
.end method
