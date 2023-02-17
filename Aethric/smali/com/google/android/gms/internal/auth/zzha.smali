.class final Lcom/google/android/gms/internal/auth/zzha;
.super Lcom/google/android/gms/internal/auth/zzgy;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgy;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    return-object p1
.end method

.method final bridge synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zza()Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/auth/zzgz;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/auth/zzgz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->zzc()Lcom/google/android/gms/internal/auth/zzgz;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/auth/zzgz;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzgz;->zzf(ILjava/lang/Object;)V

    return-void
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzd()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/auth/zzgz;

    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/auth/zzeu;->zzc:Lcom/google/android/gms/internal/auth/zzgz;

    return-void
.end method
