.class public final Lcom/google/android/gms/games/event/EventRef;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-games@@23.1.0"

# interfaces
.implements Lcom/google/android/gms/games/event/Event;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/event/EventEntity;->zzc(Lcom/google/android/gms/games/event/Event;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/event/EventEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/event/EventEntity;-><init>(Lcom/google/android/gms/games/event/Event;)V

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "description"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 1

    const-string v0, "external_event_id"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFormattedValue()Ljava/lang/String;
    .locals 1

    const-string v0, "formatted_value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFormattedValue(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "formatted_value"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "icon_image_uri"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "icon_image_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    const-string v0, "name"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/event/EventRef;->copyToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getPlayer()Lcom/google/android/gms/games/Player;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    iget-object v1, p0, Lcom/google/android/gms/games/event/EventRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/games/event/EventRef;->mDataRow:I

    const/4 v3, 0x0

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-object v0
.end method

.method public final getValue()J
    .locals 2

    const-string v0, "value"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->zza(Lcom/google/android/gms/games/event/Event;)I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    const-string v0, "visibility"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/event/EventRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/event/EventEntity;->zzb(Lcom/google/android/gms/games/event/Event;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/games/event/EventEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/event/EventEntity;-><init>(Lcom/google/android/gms/games/event/Event;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/event/EventEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
