.class public Lcom/koushikdutta/async/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/koushikdutta/async/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;,
        Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Lcom/koushikdutta/async/util/Deque<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient head:I

.field private transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    iput-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 171
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->allocateElements(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 185
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->allocateElements(I)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/util/ArrayDeque;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    return p0
.end method

.method static synthetic access$300(Lcom/koushikdutta/async/util/ArrayDeque;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    return p0
.end method

.method static synthetic access$400(Lcom/koushikdutta/async/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/koushikdutta/async/util/ArrayDeque;I)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->delete(I)Z

    move-result p0

    return p0
.end method

.method private allocateElements(I)V
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    if-gez v0, :cond_0

    ushr-int/lit8 v0, v0, 0x1

    .line 116
    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    return-void
.end method

.method private checkInvariants()V
    .locals 0

    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 146
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v1

    sub-int/2addr v3, v0

    .line 150
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private delete(I)Z
    .locals 8

    .line 505
    invoke-direct {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->checkInvariants()V

    .line 506
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 507
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 508
    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 509
    iget v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    sub-int v5, p1, v3

    and-int/2addr v5, v1

    sub-int v6, v4, p1

    and-int/2addr v6, v1

    sub-int v7, v4, v3

    and-int/2addr v7, v1

    if-ge v5, v7, :cond_3

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1

    if-gt v3, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    .line 520
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-static {v0, v7, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    aget-object p1, v0, v1

    aput-object p1, v0, v7

    add-int/lit8 p1, v3, 0x1

    sub-int v4, v1, v3

    .line 524
    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    .line 526
    aput-object p1, v0, v3

    add-int/2addr v3, v2

    and-int p1, v3, v1

    .line 527
    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    return v7

    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 531
    invoke-static {v0, v1, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    .line 532
    iput v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v1, p1

    .line 534
    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    aget-object p1, v0, v7

    aput-object p1, v0, v1

    .line 536
    invoke-static {v0, v2, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v4, v2

    and-int p1, v4, v1

    .line 537
    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    :goto_1
    return v2

    .line 515
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method private doubleCapacity()V
    .locals 6

    .line 124
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 125
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    shl-int/lit8 v4, v2, 0x1

    if-ltz v4, :cond_0

    .line 130
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 131
    invoke-static {v1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iput-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 134
    iput v5, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 135
    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 832
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 835
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 836
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->allocateElements(I)V

    const/4 v1, 0x0

    .line 837
    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 838
    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 842
    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 819
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 822
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 823
    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-eq v1, v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 203
    iget p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-ne v1, p1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    .line 201
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 219
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    if-ne p1, v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->doubleCapacity()V

    :cond_0
    return-void

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "e == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 5

    .line 705
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 706
    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x0

    .line 708
    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iput v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 710
    iget-object v2, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 712
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public clone()Lcom/koushikdutta/async/util/ArrayDeque;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 793
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/ArrayDeque;

    .line 794
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 798
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->clone()Lcom/koushikdutta/async/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 673
    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 675
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/util/ArrayDeque$DescendingIterator;-><init>(Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 560
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 572
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/util/ArrayDeque$DeqIterator;-><init>(Lcom/koushikdutta/async/util/ArrayDeque;Lcom/koushikdutta/async/util/ArrayDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 268
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 269
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 273
    :cond_0
    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 274
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 279
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    .line 280
    aget-object v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 283
    :cond_0
    aput-object v3, v1, v0

    .line 284
    iput v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    return-object v2
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 337
    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    .line 339
    :goto_0
    iget-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/util/ArrayDeque;->delete(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 263
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 365
    iget v3, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    sub-int/2addr v3, v2

    :goto_0
    and-int/2addr v3, v1

    .line 367
    iget-object v4, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 368
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/util/ArrayDeque;->delete(I)Z

    return v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public size()I
    .locals 2

    .line 551
    iget v0, p0, Lcom/koushikdutta/async/util/ArrayDeque;->tail:I

    iget v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/koushikdutta/async/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    .line 774
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 775
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 778
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 779
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method
