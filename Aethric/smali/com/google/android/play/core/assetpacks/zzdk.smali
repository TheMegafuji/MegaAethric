.class public final synthetic Lcom/google/android/play/core/assetpacks/zzdk;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzdo;

.field public final synthetic zzb:I

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzb:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zza:Lcom/google/android/play/core/assetpacks/zzdo;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzb:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzdk;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdo;->zzn(ILjava/lang/String;)V

    return-void
.end method
