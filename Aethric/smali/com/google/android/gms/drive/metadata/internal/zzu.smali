.class public final Lcom/google/android/gms/drive/metadata/internal/zzu;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/drive/UserMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "permissionId"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "displayName"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "picture"

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const-string v0, "isAuthenticatedUser"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    const-string v0, "emailAddress"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const v1, 0x5b8d80

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/common/data/DataHolder;II)Z
    .locals 2

    const-string v0, "permissionId"

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->hasNull(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 7

    const-string v0, "permissionId"

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "displayName"

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "picture"

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v0, "isAuthenticatedUser"

    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "emailAddress"

    .line 25
    invoke-direct {p0, v1}, Lcom/google/android/gms/drive/metadata/internal/zzu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 26
    new-instance p1, Lcom/google/android/gms/drive/UserMetadata;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/drive/UserMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
