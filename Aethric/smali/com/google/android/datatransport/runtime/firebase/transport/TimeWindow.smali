.class public final Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
.super Ljava/lang/Object;
.source "TimeWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;


# instance fields
.field private final end_ms_:J

.field private final start_ms_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->start_ms_:J

    .line 14
    iput-wide p3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->end_ms_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEndMs()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->end_ms_:J

    return-wide v0
.end method

.method public getStartMs()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->start_ms_:J

    return-wide v0
.end method
