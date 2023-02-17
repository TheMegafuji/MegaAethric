.class final Lcom/google/android/gms/internal/drive/zzjz;
.super Lcom/google/android/gms/internal/drive/zzjy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzjy<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/drive/zzjx;Lcom/google/android/gms/internal/drive/zzlq;I)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjx;->zza(Lcom/google/android/gms/internal/drive/zzlq;I)Lcom/google/android/gms/internal/drive/zzkk$zzd;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/drive/zzns;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/drive/zzns;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzkb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    return-object p1
.end method

.method final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzkb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzdg()Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    return-object p1
.end method

.method final zzd(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjy;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkb;->zzbp()V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/drive/zzlq;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    return p1
.end method
