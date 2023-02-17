.class final Lcom/google/android/play/core/listener/zzb;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/listener/zzc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/listener/zzc;Lcom/google/android/play/core/listener/zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/listener/zzb;->zza:Lcom/google/android/play/core/listener/zzc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/listener/zzb;->zza:Lcom/google/android/play/core/listener/zzc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/listener/zzc;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
