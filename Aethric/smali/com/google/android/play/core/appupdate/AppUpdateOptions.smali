.class public abstract Lcom/google/android/play/core/appupdate/AppUpdateOptions;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/zzu;

    invoke-direct {v0}, Lcom/google/android/play/core/appupdate/zzu;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/appupdate/zzu;->setAppUpdateType(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->setAllowAssetPackDeletion(Z)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract allowAssetPackDeletion()Z
.end method

.method public abstract appUpdateType()I
.end method
