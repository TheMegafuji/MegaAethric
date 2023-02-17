.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field public final synthetic f$1:Lcom/google/android/datatransport/runtime/TransportContext;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    iput-wide p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$2:J

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$ZsLZj3I23oAxcOhs9BhXigTFozA;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$logAndUpdateState$8$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
