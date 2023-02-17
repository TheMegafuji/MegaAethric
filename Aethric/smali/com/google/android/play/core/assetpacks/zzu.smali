.class public final Lcom/google/android/play/core/assetpacks/zzu;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field private final zza:Lcom/google/android/play/core/assetpacks/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzp;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcr;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzu;->zza:Lcom/google/android/play/core/assetpacks/zzp;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzp;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzcr;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
