.class public final Lcom/google/android/play/core/assetpacks/zzea;
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


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzea;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzd:Lcom/google/android/play/core/internal/zzcs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzea;->zze:Lcom/google/android/play/core/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzf:Lcom/google/android/play/core/internal/zzcs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzg:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzea;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v2}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzea;->zze:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzf:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/android/play/core/common/zza;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzea;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/zzdz;

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    move-object v5, v1

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzde;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzco;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/zzeb;

    move-object v2, v10

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/zzdz;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/common/zza;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v10
.end method
