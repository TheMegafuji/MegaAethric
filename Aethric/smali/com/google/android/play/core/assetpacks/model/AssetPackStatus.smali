.class public interface abstract annotation Lcom/google/android/play/core/assetpacks/model/AssetPackStatus;
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

.field public static final COMPLETED:I = 0x4

.field public static final DOWNLOADING:I = 0x2

.field public static final FAILED:I = 0x5

.field public static final NOT_INSTALLED:I = 0x8

.field public static final PENDING:I = 0x1

.field public static final TRANSFERRING:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final WAITING_FOR_WIFI:I = 0x7
