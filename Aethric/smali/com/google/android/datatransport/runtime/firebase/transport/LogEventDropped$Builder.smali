.class public final Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;
.super Ljava/lang/Object;
.source "LogEventDropped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private events_dropped_count_:J

.field private reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->events_dropped_count_:J

    .line 48
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;
    .locals 4

    .line 52
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->events_dropped_count_:J

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;-><init>(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)V

    return-object v0
.end method

.method public setEventsDroppedCount(J)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->events_dropped_count_:J

    return-object p0
.end method

.method public setReason(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p0
.end method
