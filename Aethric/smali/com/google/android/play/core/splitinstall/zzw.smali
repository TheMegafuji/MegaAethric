.class final Lcom/google/android/play/core/splitinstall/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field final synthetic zzb:I

.field final synthetic zzc:I

.field final synthetic zzd:Lcom/google/android/play/core/splitinstall/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/zzx;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/zzw;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzb:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzd:Lcom/google/android/play/core/splitinstall/zzx;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/zzw;->zza:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget v4, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzb:I

    iget v5, p0, Lcom/google/android/play/core/splitinstall/zzw;->zzc:I

    new-instance v14, Lcom/google/android/play/core/splitinstall/zza;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzb()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zza()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->zzc()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/play/core/splitinstall/zza;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/google/android/play/core/splitinstall/zzx;->zzm(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
