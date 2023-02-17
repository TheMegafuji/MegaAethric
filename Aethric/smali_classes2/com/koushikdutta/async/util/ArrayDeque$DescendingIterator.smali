.class Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;
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
    name = "DescendingIterator"
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

    .line 625
    iput-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iget-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {p1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$300(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 632
    iget-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {p1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$200(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->fence:I

    const/4 p1, -0x1

    .line 633
    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/util/ArrayDeque$1;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;-><init>(Lcom/koushikdutta/async/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 636
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->fence:I

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

    .line 640
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 642
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 643
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v0, v1

    .line 644
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$200(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 646
    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-object v0

    .line 645
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 641
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 651
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->lastRet:I

    if-ltz v0, :cond_1

    .line 653
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$500(Lcom/koushikdutta/async/util/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 655
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->this$0:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-static {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->access$200(Lcom/koushikdutta/async/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->fence:I

    :cond_0
    const/4 v0, -0x1

    .line 657
    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;->lastRet:I

    return-void

    .line 652
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
