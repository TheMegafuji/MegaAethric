.class Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LenByteArrayWaiter"
.end annotation


# instance fields
.field private final callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 68
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 1

    .line 74
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p1

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_0
    new-instance p2, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {p2, p1, v0}, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    return-object p2
.end method
