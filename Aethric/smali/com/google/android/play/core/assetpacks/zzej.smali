.class public final synthetic Lcom/google/android/play/core/assetpacks/zzej;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzek;

.field public final synthetic zzb:Lcom/google/android/play/core/assetpacks/zzei;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzej;->zza:Lcom/google/android/play/core/assetpacks/zzek;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzej;->zzb:Lcom/google/android/play/core/assetpacks/zzei;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzej;->zza:Lcom/google/android/play/core/assetpacks/zzek;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzej;->zzb:Lcom/google/android/play/core/assetpacks/zzei;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/zzek;->zzb(Lcom/google/android/play/core/assetpacks/zzei;)V

    return-void
.end method
