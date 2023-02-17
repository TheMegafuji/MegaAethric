.class final Lcom/google/android/play/core/internal/zzav;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/util/List;

.field final synthetic zzb:Lcom/google/android/play/core/splitinstall/zzf;

.field final synthetic zzc:Lcom/google/android/play/core/internal/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/zzaw;Ljava/util/List;Lcom/google/android/play/core/splitinstall/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzav;->zzc:Lcom/google/android/play/core/internal/zzaw;

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzav;->zza:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/internal/zzav;->zzb:Lcom/google/android/play/core/splitinstall/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzav;->zzc:Lcom/google/android/play/core/internal/zzaw;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzaw;->zza(Lcom/google/android/play/core/internal/zzaw;)Lcom/google/android/play/core/internal/zzay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzav;->zza:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/zzay;->zzb(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzav;->zzc:Lcom/google/android/play/core/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzav;->zzb:Lcom/google/android/play/core/splitinstall/zzf;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/zzaw;->zzc(Lcom/google/android/play/core/internal/zzaw;Lcom/google/android/play/core/splitinstall/zzf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzav;->zzc:Lcom/google/android/play/core/internal/zzaw;

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzav;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/internal/zzav;->zzb:Lcom/google/android/play/core/splitinstall/zzf;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/internal/zzaw;->zzb(Lcom/google/android/play/core/internal/zzaw;Ljava/util/List;Lcom/google/android/play/core/splitinstall/zzf;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SplitCompat"

    const-string v2, "Error checking verified files."

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzav;->zzb:Lcom/google/android/play/core/splitinstall/zzf;

    const/16 v1, -0xb

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/play/core/splitinstall/zzf;->zzb(I)V

    return-void
.end method
