.class public final Lcom/google/android/play/core/splitinstall/InternalFrameworkListenerExtensions;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerFrameworkListener(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/zzu;->zza(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/zzp;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/zzp;->zza()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->zza(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    return-void
.end method

.method public static unregisterFrameworkListener(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/zzu;->zza(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/zzp;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/zzp;->zza()Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->zzb(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V

    return-void
.end method
