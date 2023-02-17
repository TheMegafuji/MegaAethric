.class public final Lcom/google/android/play/core/assetpacks/zzec;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzec;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzec;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzec;->zzc:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzec;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzec;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzec;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/common/zza;

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzeb;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzed;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzeb;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/common/zza;)V

    return-object v3
.end method
