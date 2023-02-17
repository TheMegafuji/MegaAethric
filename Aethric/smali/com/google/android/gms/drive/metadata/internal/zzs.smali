.class public final Lcom/google/android/gms/drive/metadata/internal/zzs;
.super Lcom/google/android/gms/drive/metadata/zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/zzb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const v1, 0x419ce0

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/drive/metadata/zzb;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    .line 18
    check-cast p2, Ljava/util/Collection;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected final synthetic zzb(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic zzc(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final zzd(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/zza;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 11
    invoke-virtual {p3, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "DataHolder supplied invalid JSON"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
