.class public interface abstract annotation Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ACCESS_DENIED:I = -0x7

.field public static final ACTIVE_SESSIONS_LIMIT_EXCEEDED:I = -0x1

.field public static final API_NOT_AVAILABLE:I = -0x5

.field public static final APP_NOT_OWNED:I = -0xf

.field public static final INCOMPATIBLE_WITH_EXISTING_SESSION:I = -0x8

.field public static final INSUFFICIENT_STORAGE:I = -0xa

.field public static final INTERNAL_ERROR:I = -0x64

.field public static final INVALID_REQUEST:I = -0x3

.field public static final MODULE_UNAVAILABLE:I = -0x2

.field public static final NETWORK_ERROR:I = -0x6

.field public static final NO_ERROR:I = 0x0

.field public static final PLAY_STORE_NOT_FOUND:I = -0xe

.field public static final SERVICE_DIED:I = -0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SESSION_NOT_FOUND:I = -0x4

.field public static final SPLITCOMPAT_COPY_ERROR:I = -0xd

.field public static final SPLITCOMPAT_EMULATION_ERROR:I = -0xc

.field public static final SPLITCOMPAT_VERIFICATION_ERROR:I = -0xb
