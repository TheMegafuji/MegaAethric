.class final Lcom/google/android/play/core/appupdate/zzd;
.super Landroid/os/ResultReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/zzf;Landroid/os/Handler;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, 0x0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzd;->zza:Lcom/google/android/play/core/tasks/zzi;

    const/4 p2, -0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
