.class public final Lcom/google/android/play/core/tasks/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/tasks/zzm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/tasks/zzm;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzm;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    return-object v0
.end method

.method public final zzb(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzm;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzm;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzm;->zzc(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final zze(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzi;->zza:Lcom/google/android/play/core/tasks/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzm;->zzd(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
