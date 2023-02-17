.class public interface abstract annotation Lcom/google/android/gms/games/Player$FriendsListVisibilityStatus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FriendsListVisibilityStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FEATURE_UNAVAILABLE:I = 0x3

.field public static final REQUEST_REQUIRED:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final VISIBLE:I = 0x1
