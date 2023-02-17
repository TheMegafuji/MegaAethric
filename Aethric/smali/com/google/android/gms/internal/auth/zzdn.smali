.class public final Lcom/google/android/gms/internal/auth/zzdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzdl;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzdk;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdk;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdk;-><init>(Lcom/google/android/gms/internal/auth/zzdj;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzdl;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdl;-><init>(Lcom/google/android/gms/internal/auth/zzdj;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzdm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzdm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
