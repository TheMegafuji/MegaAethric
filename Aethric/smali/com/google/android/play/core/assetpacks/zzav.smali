.class final Lcom/google/android/play/core/assetpacks/zzav;
.super Lcom/google/android/play/core/assetpacks/zzal;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zze:Lcom/google/android/play/core/assetpacks/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzal;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzav;->zzd:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzav;->zze:Lcom/google/android/play/core/assetpacks/zzeb;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzav;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzn(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzal;->zzn(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzav;->zza:Lcom/google/android/play/core/tasks/zzi;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzav;->zzd:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzav;->zze:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzav;->zzc:Ljava/util/List;

    .line 2
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->zzc(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Ljava/util/List;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
