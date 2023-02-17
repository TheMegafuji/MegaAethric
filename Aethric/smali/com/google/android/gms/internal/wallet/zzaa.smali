.class final Lcom/google/android/gms/internal/wallet/zzaa;
.super Lcom/google/android/gms/internal/wallet/zzx;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wallet/zzaa;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wallet/PaymentCardRecognitionIntentResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/wallet/zzaa;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zzd(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
