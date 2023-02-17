.class public final synthetic Lcom/google/android/gms/auth/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/auth/zzk;


# instance fields
.field public final synthetic zza:Landroid/accounts/Account;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/zzf;->zza:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/zzf;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/zzf;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/zzf;->zza:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/zzf;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/zzf;->zzc:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/auth/zzl;->zzb(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    return-object p1
.end method
