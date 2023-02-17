.class public Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;
.super Landroid/app/Service;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field zza:Lcom/google/android/play/core/assetpacks/zzb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->zza:Lcom/google/android/play/core/assetpacks/zzb;

    return-object p1
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/zzd;->zza(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/zza;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/play/core/assetpacks/zza;->zzb(Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;)V

    return-void
.end method
