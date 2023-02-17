.class public final Lcom/google/android/play/core/assetpacks/zzbc;
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


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzb:Lcom/google/android/play/core/internal/zzcs;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzc:Lcom/google/android/play/core/internal/zzcs;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzd:Lcom/google/android/play/core/internal/zzcs;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zze:Lcom/google/android/play/core/internal/zzcs;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzf:Lcom/google/android/play/core/internal/zzcs;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzg:Lcom/google/android/play/core/internal/zzcs;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzh:Lcom/google/android/play/core/internal/zzcs;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzi:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzc:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzd:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v3}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zze:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzf:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzg:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v6}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v8

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzh:Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v6}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v9

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/zzbc;->zzi:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v6}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v6

    new-instance v11, Lcom/google/android/play/core/assetpacks/zzbb;

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/zzde;

    move-object v7, v1

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzcl;

    move-object v10, v3

    check-cast v10, Lcom/google/android/play/core/assetpacks/zzco;

    move-object v12, v4

    check-cast v12, Lcom/google/android/play/core/assetpacks/zzbx;

    move-object v13, v6

    check-cast v13, Lcom/google/android/play/core/assetpacks/zzeb;

    move-object v1, v11

    move-object v3, v0

    move-object v4, v7

    move-object v6, v10

    move-object v7, v12

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/google/android/play/core/assetpacks/zzbb;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzcl;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzbx;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V

    return-object v11
.end method
