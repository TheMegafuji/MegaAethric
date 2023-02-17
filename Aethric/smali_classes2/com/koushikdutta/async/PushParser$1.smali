.class Lcom/koushikdutta/async/PushParser$1;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/PushParser;I)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$1;->this$0:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/koushikdutta/async/PushParser$1;->this$0:Lcom/koushikdutta/async/PushParser;

    invoke-static {p1}, Lcom/koushikdutta/async/PushParser;->access$000(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
