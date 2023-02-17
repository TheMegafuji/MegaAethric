.class public interface abstract annotation Lcom/google/android/play/core/install/model/InstallErrorCode;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ERROR_API_NOT_AVAILABLE:I = -0x3

.field public static final ERROR_APP_NOT_OWNED:I = -0xa

.field public static final ERROR_DOWNLOAD_NOT_PRESENT:I = -0x7

.field public static final ERROR_INSTALL_NOT_ALLOWED:I = -0x6

.field public static final ERROR_INSTALL_UNAVAILABLE:I = -0x5

.field public static final ERROR_INTERNAL_ERROR:I = -0x64

.field public static final ERROR_INVALID_REQUEST:I = -0x4

.field public static final ERROR_PLAY_STORE_NOT_FOUND:I = -0x9

.field public static final ERROR_UNKNOWN:I = -0x2

.field public static final NO_ERROR:I = 0x0

.field public static final NO_ERROR_PARTIALLY_ALLOWED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field
