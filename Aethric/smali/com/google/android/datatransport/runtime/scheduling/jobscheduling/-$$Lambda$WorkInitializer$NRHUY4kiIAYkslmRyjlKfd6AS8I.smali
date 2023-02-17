.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$NRHUY4kiIAYkslmRyjlKfd6AS8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$NRHUY4kiIAYkslmRyjlKfd6AS8I;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$NRHUY4kiIAYkslmRyjlKfd6AS8I;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->lambda$ensureContextsScheduled$0$WorkInitializer()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
