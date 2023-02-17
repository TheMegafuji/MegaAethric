.class final Lcom/google/android/gms/internal/auth/zzga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/auth/zzfw;

.field private final zzb:Lcom/google/android/gms/internal/auth/zzgy;

.field private final zzc:Lcom/google/android/gms/internal/auth/zzel;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/auth/zzgy;Lcom/google/android/gms/internal/auth/zzel;Lcom/google/android/gms/internal/auth/zzfw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:Lcom/google/android/gms/internal/auth/zzel;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzga;->zza:Lcom/google/android/gms/internal/auth/zzfw;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/auth/zzgy;Lcom/google/android/gms/internal/auth/zzel;Lcom/google/android/gms/internal/auth/zzfw;)Lcom/google/android/gms/internal/auth/zzga;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzga;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;-><init>(Lcom/google/android/gms/internal/auth/zzgy;Lcom/google/android/gms/internal/auth/zzel;Lcom/google/android/gms/internal/auth/zzfw;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zza:Lcom/google/android/gms/internal/auth/zzfw;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeu;->zzi(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/auth/zzes;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzfv;->zzg()Lcom/google/android/gms/internal/auth/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:Lcom/google/android/gms/internal/auth/zzel;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzel;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgj;->zzf(Lcom/google/android/gms/internal/auth/zzgy;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/auth/zzeu;

    iget-object p3, p2, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zza()Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zzc()Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/zzet;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lcom/google/android/gms/internal/auth/zzgy;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgy;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzi(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:Lcom/google/android/gms/internal/auth/zzel;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzel;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzep;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
