.class public final synthetic Lcom/google/android/play/core/assetpacks/zzct;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzde;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzct;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzct;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzct;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzct;->zzb:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzde;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
