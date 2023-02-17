.class final Lcom/google/android/gms/internal/auth/zzds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/auth/zzek;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/auth/zzek;->zzb:I

    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/auth/zzek;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzds;->zzd:Lcom/google/android/gms/internal/auth/zzek;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
