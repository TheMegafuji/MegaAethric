.class public Lcom/google/android/play/core/review/testing/FakeReviewManager;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/review/ReviewManager;


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/play/core/review/ReviewInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzb:Lcom/google/android/play/core/review/ReviewInfo;

    if-eq p2, p1, :cond_0

    new-instance p1, Lcom/google/android/play/core/review/ReviewException;

    const/4 p2, -0x2

    invoke-direct {p1, p2}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->zza(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/tasks/Tasks;->zzb(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public requestReviewFlow()Lcom/google/android/play/core/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zza:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    const/high16 v2, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    invoke-static {v0, v3}, Lcom/google/android/play/core/review/ReviewInfo;->zzc(Landroid/app/PendingIntent;Z)Lcom/google/android/play/core/review/ReviewInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/review/testing/FakeReviewManager;->zzb:Lcom/google/android/play/core/review/ReviewInfo;

    .line 4
    invoke-static {v0}, Lcom/google/android/play/core/tasks/Tasks;->zzb(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    return-object v0
.end method
