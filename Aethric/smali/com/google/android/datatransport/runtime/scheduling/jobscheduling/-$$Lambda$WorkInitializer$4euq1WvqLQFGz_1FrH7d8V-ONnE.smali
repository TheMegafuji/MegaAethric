.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$4euq1WvqLQFGz_1FrH7d8V-ONnE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$4euq1WvqLQFGz_1FrH7d8V-ONnE;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$WorkInitializer$4euq1WvqLQFGz_1FrH7d8V-ONnE;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->lambda$ensureContextsScheduled$1$WorkInitializer()V

    return-void
.end method
