.class public final Lcom/google/android/gms/drive/metadata/internal/zzo;
.super Lcom/google/android/gms/drive/metadata/internal/zzl;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzl<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzjk:Lcom/google/android/gms/drive/metadata/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzjk:Lcom/google/android/gms/drive/metadata/internal/zzg;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "parentsExtra"

    const-string v1, "dbInstanceId"

    const-string v2, "parentsExtraHolder"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "parents"

    const v2, 0x3e8fa0

    .line 4
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzl;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v1, "parentsExtraHolder"

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v1, "parentsExtraHolder"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 76
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/google/android/gms/drive/metadata/internal/zzo;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzl;->zzc(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final zzc(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzl;->zzc(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parentsExtra"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v3, "parentsExtraHolder"

    .line 11
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    monitor-enter p1

    .line 15
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v2, :cond_0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_2

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    .line 22
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v8

    .line 23
    new-instance v9, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-direct {v9}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;-><init>()V

    .line 24
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "sqlId"

    .line 26
    invoke-virtual {v1, v10, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 27
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v3

    const-string v7, "childSqlIdColumn"

    .line 31
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "parentSqlIdColumn"

    .line 33
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "parentResIdColumn"

    .line 35
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v9

    :goto_1
    if-ge v6, v9, :cond_2

    .line 38
    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v10

    .line 40
    invoke-virtual {v2, v7, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 41
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    .line 42
    new-instance v12, Lcom/google/android/gms/drive/metadata/internal/zzq;

    .line 43
    invoke-virtual {v2, v3, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-virtual {v2, v8, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v14

    const/4 v10, 0x1

    invoke-direct {v12, v13, v14, v15, v10}, Lcom/google/android/gms/drive/metadata/internal/zzq;-><init>(Ljava/lang/String;JI)V

    .line 46
    iget-object v10, v11, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zzjj:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "parentsExtra"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 54
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    const-string v1, "parentsExtra"

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 52
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 54
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v1, "dbInstanceId"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move/from16 v3, p2

    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    .line 60
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v2, v2, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->zzjj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/drive/metadata/internal/zzq;

    .line 63
    new-instance v11, Lcom/google/android/gms/drive/DriveId;

    iget-object v4, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->zzad:Ljava/lang/String;

    iget-wide v5, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->zzae:J

    iget v9, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->zzaf:I

    move-object v3, v11

    move-wide v7, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    .line 64
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-object v10
.end method
