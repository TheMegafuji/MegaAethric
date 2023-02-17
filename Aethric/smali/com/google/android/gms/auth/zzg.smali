.class public final synthetic Lcom/google/android/gms/auth/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/auth/zzk;


# instance fields
.field public final synthetic zza:Landroid/accounts/Account;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/zzg;->zza:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/zzg;->zza:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zze;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/zzf;

    move-result-object p1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/zzf;->zzf(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Service call returned null."

    .line 3
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
