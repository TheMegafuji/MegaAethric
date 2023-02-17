.class public abstract Lcom/google/android/gms/drive/Metadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_AVAILABLE_LOCALLY:I = 0x1

.field public static final CONTENT_NOT_AVAILABLE_LOCALLY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlternateLink()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjm:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentAvailability()I
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->zzlk:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzld:Lcom/google/android/gms/internal/drive/zzig;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getCustomProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjn:Lcom/google/android/gms/internal/drive/zzhv;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzba()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjl:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public getEmbedLink()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjp:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjr:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastViewedByMeDate()Ljava/util/Date;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzle:Lcom/google/android/gms/internal/drive/zzih;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzki:Lcom/google/android/gms/internal/drive/zzhx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedByMeDate()Ljava/util/Date;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlg:Lcom/google/android/gms/internal/drive/zzii;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlf:Lcom/google/android/gms/internal/drive/zzij;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkj:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaBytesUsed()J
    .locals 2

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzko:Lcom/google/android/gms/internal/drive/zzhy;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSharedWithMeDate()Ljava/util/Date;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->zzlh:Lcom/google/android/gms/internal/drive/zzil;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkr:Lcom/google/android/gms/internal/drive/zzib;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebContentLink()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkt:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewLink()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzku:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjx:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isExplicitlyTrashed()Z
    .locals 1

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjy:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFolder()Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/drive/Metadata;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInAppFolder()Z
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzjv:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPinnable()Z
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->zzll:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzka:Lcom/google/android/gms/internal/drive/zzhw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkc:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShared()Z
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkd:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStarred()Z
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkp:Lcom/google/android/gms/internal/drive/zzia;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTrashable()Z
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkg:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isTrashed()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzks:Lcom/google/android/gms/internal/drive/zzic;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isViewed()Z
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzkh:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/Metadata;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
