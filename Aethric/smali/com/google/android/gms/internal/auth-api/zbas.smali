.class public final synthetic Lcom/google/android/gms/internal/auth-api/zbas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zba:Lcom/google/android/gms/internal/auth-api/zbay;

.field public final synthetic zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api/zbay;Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zbas;->zba:Lcom/google/android/gms/internal/auth-api/zbay;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zbas;->zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zbas;->zba:Lcom/google/android/gms/internal/auth-api/zbay;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zbas;->zbb:Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/auth-api/zbay;->zba(Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;Lcom/google/android/gms/internal/auth-api/zbaz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
