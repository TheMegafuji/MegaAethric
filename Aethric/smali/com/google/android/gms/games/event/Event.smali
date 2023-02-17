.class public interface abstract Lcom/google/android/gms/games/event/Event;
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
        "Lcom/google/android/gms/games/event/Event;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract getFormattedValue()Ljava/lang/String;
.end method

.method public abstract getFormattedValue(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getPlayer()Lcom/google/android/gms/games/Player;
.end method

.method public abstract getValue()J
.end method

.method public abstract isVisible()Z
.end method
