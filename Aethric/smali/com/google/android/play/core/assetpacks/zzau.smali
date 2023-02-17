.class final Lcom/google/android/play/core/assetpacks/zzau;
.super Lcom/google/android/play/core/assetpacks/zzal;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zzc:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzeb;

.field private final zze:Lcom/google/android/play/core/assetpacks/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Lcom/google/android/play/core/assetpacks/zzbe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzal;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzau;->zzc:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzau;->zzd:Lcom/google/android/play/core/assetpacks/zzeb;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzau;->zze:Lcom/google/android/play/core/assetpacks/zzbe;

    return-void
.end method


# virtual methods
.method public final zzm(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzal;->zzm(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzau;->zza:Lcom/google/android/play/core/tasks/zzi;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzau;->zzc:Lcom/google/android/play/core/assetpacks/zzco;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzau;->zzd:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzau;->zze:Lcom/google/android/play/core/assetpacks/zzbe;

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackStates;->zzb(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;Lcom/google/android/play/core/assetpacks/zzbe;)Lcom/google/android/play/core/assetpacks/AssetPackStates;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
