.class public final Lcom/google/android/gms/internal/drive/zzhz;
.super Lcom/google/android/gms/drive/metadata/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzl<",
        "Lcom/google/android/gms/drive/DriveSpace;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-string p1, "inDriveSpace"

    const-string v0, "isAppData"

    const-string v1, "inGooglePhotosSpace"

    .line 1
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "spaces"

    const v2, 0x6acfc0

    .line 4
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzl;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inDriveSpace"

    .line 7
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object v1, Lcom/google/android/gms/drive/DriveSpace;->zzah:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "isAppData"

    .line 9
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lcom/google/android/gms/drive/DriveSpace;->zzai:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "inGooglePhotosSpace"

    .line 11
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/google/android/gms/drive/DriveSpace;->zzaj:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
