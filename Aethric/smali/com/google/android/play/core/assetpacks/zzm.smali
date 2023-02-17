.class public final Lcom/google/android/play/core/assetpacks/zzm;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;

.field private final zzb:Lcom/google/android/play/core/internal/zzcs;

.field private final zzc:Lcom/google/android/play/core/internal/zzcs;

.field private final zzd:Lcom/google/android/play/core/internal/zzcs;

.field private final zze:Lcom/google/android/play/core/internal/zzcs;

.field private final zzf:Lcom/google/android/play/core/internal/zzcs;

.field private final zzg:Lcom/google/android/play/core/internal/zzcs;

.field private final zzh:Lcom/google/android/play/core/internal/zzcs;

.field private final zzi:Lcom/google/android/play/core/internal/zzcs;

.field private final zzj:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzm;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzd:Lcom/google/android/play/core/internal/zzcs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzm;->zze:Lcom/google/android/play/core/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzf:Lcom/google/android/play/core/internal/zzcs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzg:Lcom/google/android/play/core/internal/zzcs;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzh:Lcom/google/android/play/core/internal/zzcs;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzi:Lcom/google/android/play/core/internal/zzcs;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzj:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzm;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/play/core/splitinstall/zzs;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzm;->zze:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzf:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v5}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzh:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v7}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v10

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzi:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v7}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/google/android/play/core/common/zza;

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/zzm;->zzj:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v7}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v7

    .line 2
    new-instance v13, Lcom/google/android/play/core/assetpacks/zzl;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast v1, Lcom/google/android/play/core/assetpacks/zzbb;

    move-object v8, v2

    check-cast v8, Lcom/google/android/play/core/assetpacks/zzde;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/zzco;

    move-object v12, v5

    check-cast v12, Lcom/google/android/play/core/assetpacks/zzbx;

    move-object v14, v7

    check-cast v14, Lcom/google/android/play/core/assetpacks/zzeb;

    move-object v2, v13

    move-object v3, v0

    move-object v5, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v12, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/play/core/assetpacks/zzl;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/splitinstall/zzs;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzbx;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v13
.end method
