.class public abstract Lcom/google/android/play/core/internal/zzah;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/internal/zzah;->zza()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/internal/zzah;->zzc(Ljava/lang/Exception;)V

    return-void
.end method

.method protected abstract zza()V
.end method

.method final zzb()Lcom/google/android/play/core/tasks/zzi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    return-object v0
.end method

.method public final zzc(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzah;->zza:Lcom/google/android/play/core/tasks/zzi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
