.class public final Lcom/google/android/play/core/appupdate/zzb;
.super Lcom/google/android/play/core/listener/zzc;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "AppUpdateListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/listener/zzc;-><init>(Lcom/google/android/play/core/internal/zzag;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "package.name"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "ListenerRegistryBroadcastReceiver received broadcast for third party app: %s"

    .line 4
    invoke-virtual {p1, p2, v1}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "List of extras in received intent:"

    .line 5
    invoke-virtual {p1, v3, v0}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/appupdate/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "Key: %s; value: %s"

    invoke-virtual {v3, v0, v4}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/play/core/install/InstallState;->zzb(Landroid/content/Intent;Lcom/google/android/play/core/internal/zzag;)Lcom/google/android/play/core/install/InstallState;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/play/core/appupdate/zzb;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/listener/zzc;->zzi(Ljava/lang/Object;)V

    return-void
.end method
