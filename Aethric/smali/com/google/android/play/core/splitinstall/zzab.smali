.class public final Lcom/google/android/play/core/splitinstall/zzab;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;

.field private final zzd:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzab;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzd:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzab;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/zzx;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitinstall/zzs;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/zzab;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/splitinstall/zzbe;

    new-instance v4, Lcom/google/android/play/core/splitinstall/zzaa;

    .line 2
    check-cast v0, Lcom/google/android/play/core/splitinstall/zzbc;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/zzaa;-><init>(Lcom/google/android/play/core/splitinstall/zzbc;Lcom/google/android/play/core/splitinstall/zzx;Lcom/google/android/play/core/splitinstall/zzs;Lcom/google/android/play/core/splitinstall/zzbe;)V

    return-object v4
.end method
