.class public abstract Lcom/google/android/play/core/internal/zzab;
.super Lcom/google/android/play/core/internal/zzl;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzac;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/internal/zzac;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/play/core/internal/zzac;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/play/core/internal/zzac;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/internal/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/zzaa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
