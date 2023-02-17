.class final Lcom/google/android/gms/internal/drive/zzlm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzll;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p2, Lcom/google/android/gms/internal/drive/zzlk;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzlk;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzlk;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return p3

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/drive/zzlk;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzlk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->zzdx()Lcom/google/android/gms/internal/drive/zzlk;

    move-result-object p1

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzlk;->zza(Lcom/google/android/gms/internal/drive/zzlk;)V

    :cond_1
    return-object p1
.end method

.method public final zzh(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    return-object p1
.end method

.method public final zzi(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    return-object p1
.end method

.method public final zzj(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->isMutable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/drive/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzlk;->zzbp()V

    return-object p1
.end method

.method public final zzl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzlk;->zzdw()Lcom/google/android/gms/internal/drive/zzlk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->zzdx()Lcom/google/android/gms/internal/drive/zzlk;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzlj<",
            "**>;"
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
