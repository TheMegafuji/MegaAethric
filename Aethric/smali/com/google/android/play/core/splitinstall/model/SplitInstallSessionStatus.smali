.class public interface abstract annotation Lcom/google/android/play/core/splitinstall/model/SplitInstallSessionStatus;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANCELED:I = 0x7

.field public static final CANCELING:I = 0x9

.field public static final DOWNLOADED:I = 0x3

.field public static final DOWNLOADING:I = 0x2

.field public static final FAILED:I = 0x6

.field public static final INSTALLED:I = 0x5

.field public static final INSTALLING:I = 0x4

.field public static final PENDING:I = 0x1

.field public static final REQUIRES_USER_CONFIRMATION:I = 0x8

.field public static final UNKNOWN:I
