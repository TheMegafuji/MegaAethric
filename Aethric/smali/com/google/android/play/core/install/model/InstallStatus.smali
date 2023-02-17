.class public interface abstract annotation Lcom/google/android/play/core/install/model/InstallStatus;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANCELED:I = 0x6

.field public static final DOWNLOADED:I = 0xb

.field public static final DOWNLOADING:I = 0x2

.field public static final FAILED:I = 0x5

.field public static final INSTALLED:I = 0x4

.field public static final INSTALLING:I = 0x3

.field public static final PENDING:I = 0x1

.field public static final REQUIRES_UI_INTENT:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNKNOWN:I
