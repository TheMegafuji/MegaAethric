.class public final Lcom/google/android/play/core/internal/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private zza:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 1

    check-cast p0, Lcom/google/android/play/core/internal/zzcp;

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzcp;->zza:Lcom/google/android/play/core/internal/zzcs;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
