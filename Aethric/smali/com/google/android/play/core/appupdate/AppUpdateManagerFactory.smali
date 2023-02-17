.class public final Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/zza;->zza(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/zzaa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/zzaa;->zza()Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p0

    return-object p0
.end method
