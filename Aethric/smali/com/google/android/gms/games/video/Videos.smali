.class public interface abstract Lcom/google/android/gms/games/video/Videos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/Videos$CaptureStateResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CAPTURE_OVERLAY_STATE_CAPTURE_STARTED:I = 0x2

.field public static final CAPTURE_OVERLAY_STATE_CAPTURE_STOPPED:I = 0x3

.field public static final CAPTURE_OVERLAY_STATE_DISMISSED:I = 0x4

.field public static final CAPTURE_OVERLAY_STATE_SHOWN:I = 0x1


# virtual methods
.method public abstract getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
.end method

.method public abstract registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
.end method

.method public abstract unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method
