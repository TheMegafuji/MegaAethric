.class public Lcom/koushikdutta/async/ByteBufferList;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/ByteBufferList$Reclaimer;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

.field private static final LOCK:Ljava/lang/Object;

.field public static MAX_ITEM_SIZE:I

.field private static MAX_SIZE:I

.field static currentSize:I

.field static maxItem:I

.field static reclaimed:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/util/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field order:Ljava/nio/ByteOrder;

.field private remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 406
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    const/high16 v0, 0x100000

    .line 417
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    const/high16 v0, 0x40000

    .line 418
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    const/4 v0, 0x0

    .line 419
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 420
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 474
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    .line 534
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 22
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 22
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 41
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 22
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private addRemaining(I)V
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-ltz v0, :cond_0

    .line 331
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    :cond_0
    return-void
.end method

.method public static deepCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 531
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static getReclaimed()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 409
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public static obtain(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 477
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    if-gt p0, v0, :cond_3

    .line 478
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 480
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 482
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 484
    sput v3, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 485
    :cond_1
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v3, v4

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 486
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-lt v3, p0, :cond_0

    .line 488
    monitor-exit v1

    return-object v2

    .line 492
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/16 v0, 0x2000

    .line 497
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static obtainArray([Ljava/nio/ByteBuffer;I)V
    .locals 7

    .line 502
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 507
    sget-object v2, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 508
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-ge v1, p1, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 509
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 510
    sget v5, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v5, v6

    sput v5, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sub-int v5, p1, v1

    .line 511
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v3, 0x1

    .line 513
    aput-object v4, p0, v3

    move v3, v5

    goto :goto_0

    .line 515
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    const/16 v0, 0x2000

    sub-int/2addr p1, v1

    .line 519
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int/lit8 v0, v3, 0x1

    .line 520
    aput-object p1, p0, v3

    move v3, v0

    .line 523
    :cond_2
    :goto_2
    array-length p1, p0

    if-ge v3, p1, :cond_3

    .line 524
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    aput-object p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private read(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 229
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_6

    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 235
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 239
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-object p1

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    :cond_3
    if-ge v2, p1, :cond_4

    .line 252
    iget-object v4, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v4}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    sub-int v5, p1, v2

    .line 253
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 254
    invoke-virtual {v4, v1, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v5

    .line 256
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 257
    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 263
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_5

    .line 264
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 265
    :cond_5
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 230
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reclaim(Ljava/nio/ByteBuffer;)V
    .locals 4

    if-eqz p0, :cond_7

    .line 439
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 443
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_2

    return-void

    .line 445
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v1, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    if-le v0, v1, :cond_3

    return-void

    .line 448
    :cond_3
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 452
    :cond_4
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :goto_0
    :try_start_0
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 455
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 456
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v3, v2

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    goto :goto_0

    .line 459
    :cond_5
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v3, :cond_6

    .line 461
    monitor-exit v1

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 466
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 468
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 470
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 471
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method private static reclaimedContains(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 431
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setMaxItemSize(I)V
    .locals 0

    .line 427
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    return-void
.end method

.method public static setMaxPoolSize(I)V
    .locals 0

    .line 423
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    return-void
.end method

.method public static writeOutputStream(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 543
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 544
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 549
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 551
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public add(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    .line 275
    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    return-object p0
.end method

.method public add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 280
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 282
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-object p0

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 288
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 291
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 292
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 294
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 297
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 298
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    return-object p0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    return-object p0
.end method

.method public varargs addAll([Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 52
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 53
    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 47
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addFirst(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 309
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 315
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 317
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 318
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 320
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 322
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public get()B
    .locals 3

    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 137
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public get(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 1

    .line 216
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 217
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 218
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    return-void
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 5

    .line 177
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    if-le v3, p2, :cond_1

    sub-int v1, p2, v1

    .line 193
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 195
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 197
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move v1, v3

    goto :goto_0

    .line 208
    :cond_2
    :goto_1
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void

    .line 178
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get([B)V
    .locals 2

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    return-void
.end method

.method public get([BII)V
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_3

    move v0, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    .line 167
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 169
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 173
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void

    .line 153
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAll()Ljava/nio/ByteBuffer;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAllArray()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 71
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 72
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-object v0
.end method

.method public getAllByteArray()[B
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 65
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    return-object v0
.end method

.method public getByteChar()C
    .locals 3

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    .line 125
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public getBytes(I)[B
    .locals 0

    .line 58
    new-array p1, p1, [B

    .line 59
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    return-object p1
.end method

.method public getInt()I
    .locals 3

    const/4 v0, 0x4

    .line 118
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 119
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public getLong()J
    .locals 4

    const/16 v0, 0x8

    .line 142
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 143
    iget v3, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-wide v1
.end method

.method public getShort()S
    .locals 3

    const/4 v0, 0x2

    .line 130
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 131
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v1
.end method

.method public hasRemaining()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public peek()B
    .locals 2

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peekBytes(I)[B
    .locals 3

    .line 107
    new-array v0, p1, [B

    .line 108
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public peekInt()I
    .locals 2

    const/4 v0, 0x4

    .line 99
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public peekLong()J
    .locals 2

    const/16 v0, 0x8

    .line 103
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public peekShort()S
    .locals 2

    const/4 v0, 0x2

    .line 91
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public peekString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 362
    sget-object p1, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 371
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 372
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 376
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 377
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 379
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-object p1
.end method

.method public recycle()V
    .locals 1

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-void
.end method

.method public remaining()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v0
.end method

.method public remove()Ljava/nio/ByteBuffer;
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 343
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public skip(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    return-object p0
.end method

.method public spewString()V
    .locals 2

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public trim()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    return-void
.end method
