.class Lcom/koushikdutta/async/PushParser$IntWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntWaiter"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Ljava/lang/Integer;",
            ">;"
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 35
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$IntWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/koushikdutta/async/PushParser$IntWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
