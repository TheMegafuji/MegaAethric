.class public final Lcom/google/android/gms/internal/drive/zzim;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzlj:Lcom/google/android/gms/internal/drive/zzim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/drive/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzim;->zzlj:Lcom/google/android/gms/internal/drive/zzim;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, "sqlId"

    const-string v1, "resourceId"

    const-string v2, "mimeType"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "dbInstanceId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "driveId"

    const v3, 0x3e8fa0

    .line 4
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->zzaz()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 9

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dbInstanceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->zzki:Lcom/google/android/gms/internal/drive/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v0, "resourceId"

    .line 17
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqlId"

    .line 18
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/google/android/gms/drive/DriveId;

    const-string p3, "generated-android-null"

    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object p2
.end method
