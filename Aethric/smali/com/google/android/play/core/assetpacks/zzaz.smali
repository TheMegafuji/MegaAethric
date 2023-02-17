.class public final synthetic Lcom/google/android/play/core/assetpacks/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzbb;

.field public final synthetic zzb:Landroid/os/Bundle;

.field public final synthetic zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzb:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzaz;->zzc:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzbb;->zzc(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    return-void
.end method
