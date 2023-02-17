.class Lcom/koushikdutta/async/parser/ByteBufferListParser$1;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "ByteBufferListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture<",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

.field final synthetic val$emitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/ByteBufferListParser;Lcom/koushikdutta/async/DataEmitter;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->this$0:Lcom/koushikdutta/async/parser/ByteBufferListParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelCleanup()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;->val$emitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    return-void
.end method
