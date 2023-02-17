.class final Lcom/google/android/play/core/assetpacks/zzao;
.super Lcom/google/android/play/core/assetpacks/zzal;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zzc:Lcom/google/android/play/core/assetpacks/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzao;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/zzal;-><init>(Lcom/google/android/play/core/assetpacks/zzaw;Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/assetpacks/zzal;->zzg(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzao;->zzc:Lcom/google/android/play/core/assetpacks/zzaw;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/zzaw;->zzw(Lcom/google/android/play/core/assetpacks/zzaw;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzao;->zza:Lcom/google/android/play/core/tasks/zzi;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
