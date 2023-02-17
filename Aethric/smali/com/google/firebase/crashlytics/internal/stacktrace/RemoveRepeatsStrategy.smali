.class public Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source "RemoveRepeatsStrategy.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# instance fields
.field private final maxRepetitions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->maxRepetitions:I

    return-void
.end method

.method private static isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z
    .locals 5

    sub-int v0, p2, p1

    add-int v1, p2, v0

    .line 100
    array-length v2, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, p1, v1

    .line 105
    aget-object v2, p0, v2

    add-int v4, p2, v1

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .locals 10

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 68
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 70
    aget-object v7, p0, v4

    .line 71
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 72
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p0, v9, v4}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    if-ge v6, p1, :cond_1

    .line 81
    invoke-static {p0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v4

    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    aget-object v6, p0, v4

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    move v8, v4

    const/4 v6, 0x1

    .line 87
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    .line 91
    :cond_3
    new-array p0, v5, [Ljava/lang/StackTraceElement;

    .line 92
    invoke-static {v1, v2, p0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 3

    .line 42
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->maxRepetitions:I

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 43
    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method
