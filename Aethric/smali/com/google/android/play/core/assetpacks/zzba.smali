.class public final synthetic Lcom/google/android/play/core/assetpacks/zzba;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzbb;

.field public final synthetic zzb:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzba;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzba;->zzb:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzba;->zza:Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzba;->zzb:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/zzc;->zzi(Ljava/lang/Object;)V

    return-void
.end method
