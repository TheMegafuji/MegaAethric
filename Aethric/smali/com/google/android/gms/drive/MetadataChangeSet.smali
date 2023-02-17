.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    }
.end annotation


# static fields
.field public static final CUSTOM_PROPERTY_SIZE_LIMIT_BYTES:I = 0x7c

.field public static final INDEXABLE_TEXT_SIZE_LIMIT_BYTES:I = 0x20000

.field public static final MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP:I = 0x1e

.field public static final MAX_PUBLIC_PROPERTIES_PER_RESOURCE:I = 0x1e

.field public static final MAX_TOTAL_PROPERTIES_PER_RESOURCE:I = 0x64

.field public static final zzax:Lcom/google/android/gms/drive/MetadataChangeSet;


# instance fields
.field private final zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 21
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbe()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    sput-object v0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzax:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzbf()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public final getCustomPropertyChangeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzjn:Lcom/google/android/gms/internal/drive/zzhv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzba()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzjo:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIndexableText()Ljava/lang/String;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzju:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastViewedByMeDate()Ljava/util/Date;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzif;->zzle:Lcom/google/android/gms/internal/drive/zzih;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzki:Lcom/google/android/gms/internal/drive/zzhx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzkq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzkr:Lcom/google/android/gms/internal/drive/zzib;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isPinned()Ljava/lang/Boolean;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzka:Lcom/google/android/gms/internal/drive/zzhw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStarred()Ljava/lang/Boolean;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzkp:Lcom/google/android/gms/internal/drive/zzia;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isViewed()Ljava/lang/Boolean;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzhs;->zzkh:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzay:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method
