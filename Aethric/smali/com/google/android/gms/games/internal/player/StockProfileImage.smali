.class public interface abstract Lcom/google/android/gms/games/internal/player/StockProfileImage;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/games/internal/player/StockProfileImage;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract zza()Landroid/net/Uri;
.end method
