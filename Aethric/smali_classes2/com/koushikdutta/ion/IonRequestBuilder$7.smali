.class Lcom/koushikdutta/ion/IonRequestBuilder$7;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/async/parser/AsyncParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/IonRequestBuilder;->asByteArray()Lcom/koushikdutta/ion/future/ResponseFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/parser/AsyncParser<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/ion/IonRequestBuilder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonRequestBuilder;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder$7;->this$0:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$parse$0(Lcom/koushikdutta/async/ByteBufferList;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAllByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMime()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 736
    const-class v0, [B

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/DataEmitter;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "[B>;"
        }
    .end annotation

    .line 725
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    sget-object v0, Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;->INSTANCE:Lcom/koushikdutta/ion/-$$Lambda$IonRequestBuilder$7$8HOIjRRNhlOL_Mjk7xJi89Bz6NI;

    .line 726
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->thenConvert(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/DataSink;Ljava/lang/Object;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 722
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder$7;->write(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public write(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2

    .line 731
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/koushikdutta/async/parser/ByteBufferListParser;->write(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
