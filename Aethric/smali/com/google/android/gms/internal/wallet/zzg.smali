.class public final Lcom/google/android/gms/internal/wallet/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/wallet/zzd;

.field private static volatile zzb:Lcom/google/android/gms/internal/wallet/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wallet/zzf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wallet/zzf;-><init>(Lcom/google/android/gms/internal/wallet/zze;)V

    sput-object v0, Lcom/google/android/gms/internal/wallet/zzg;->zza:Lcom/google/android/gms/internal/wallet/zzd;

    sput-object v0, Lcom/google/android/gms/internal/wallet/zzg;->zzb:Lcom/google/android/gms/internal/wallet/zzd;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/wallet/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wallet/zzg;->zzb:Lcom/google/android/gms/internal/wallet/zzd;

    return-object v0
.end method
