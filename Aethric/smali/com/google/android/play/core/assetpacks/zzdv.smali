.class public final Lcom/google/android/play/core/assetpacks/zzdv;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/internal/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdv;->zza:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdv;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzdu;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/zzdu;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    return-object v1
.end method
