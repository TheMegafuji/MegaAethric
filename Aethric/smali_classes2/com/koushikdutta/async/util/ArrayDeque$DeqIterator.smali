.class Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/koushikdutta/async/util/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/util/ArrayDeque;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iget-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {p1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$200(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    .line 589
    iget-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {p1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$300(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    const/4 p1, -0x1

    .line 595
    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/util/ArrayDeque$1;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;-><init>(Lcom/koushikdutta/async/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 598
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 602
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    if-eq v0, v1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    aget-object v0, v0, v1

    .line 607
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$300(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 609
    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    add-int/lit8 v1, v1, 0x1

    .line 610
    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    return-object v0

    .line 608
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 603
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 615
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    if-ltz v0, :cond_1

    .line 617
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$500(Lcom/koushikdutta/async/util/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->cursor:I

    .line 619
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$300(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->fence:I

    :cond_0
    const/4 v0, -0x1

    .line 621
    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;->lastRet:I

    return-void

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
