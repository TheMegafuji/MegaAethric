.class final Lcom/google/android/gms/auth/api/accounttransfer/zzf;
.super Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/auth/api/accounttransfer/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzg;Lcom/google/android/gms/auth/api/accounttransfer/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzf;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/accounttransfer/zzj;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzl;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzf;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzg;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
