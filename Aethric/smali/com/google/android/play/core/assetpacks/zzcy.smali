.class public final synthetic Lcom/google/android/play/core/assetpacks/zzcy;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzde;

.field public final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzdb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzdb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcy;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzcy;->zzb:Lcom/google/android/play/core/assetpacks/zzdb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcy;->zza:Lcom/google/android/play/core/assetpacks/zzde;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzcy;->zzb:Lcom/google/android/play/core/assetpacks/zzdb;

    iget v1, v1, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzde;->zzn(I)V

    return-void
.end method
