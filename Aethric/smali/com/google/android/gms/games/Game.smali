.class public interface abstract Lcom/google/android/gms/games/Game;
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
        "Lcom/google/android/gms/games/Game;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract areSnapshotsEnabled()Z
.end method

.method public abstract getAchievementTotalCount()I
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getDeveloperName()Ljava/lang/String;
.end method

.method public abstract getDeveloperName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getFeaturedImageUri()Landroid/net/Uri;
.end method

.method public abstract getFeaturedImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHiResImageUri()Landroid/net/Uri;
.end method

.method public abstract getHiResImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLeaderboardCount()I
.end method

.method public abstract getPrimaryCategory()Ljava/lang/String;
.end method

.method public abstract getSecondaryCategory()Ljava/lang/String;
.end method

.method public abstract getThemeColor()Ljava/lang/String;
.end method

.method public abstract hasGamepadSupport()Z
.end method

.method public abstract zza()Ljava/lang/String;
.end method

.method public abstract zzb()Z
.end method

.method public abstract zzc()Z
.end method

.method public abstract zzd()Z
.end method

.method public abstract zze()Z
.end method

.method public abstract zzf()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract zzg()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
