.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdy;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzdz;

.field public final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzdw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdy;->zza:Lcom/google/android/play/core/assetpacks/zzdz;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdy;->zzb:Lcom/google/android/play/core/assetpacks/zzdw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdy;->zza:Lcom/google/android/play/core/assetpacks/zzdz;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdy;->zzb:Lcom/google/android/play/core/assetpacks/zzdw;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzdz;->zzb(Lcom/google/android/play/core/assetpacks/zzdw;)V

    return-void
.end method
