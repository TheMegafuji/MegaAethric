.class public final Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/callback/CallbackInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wallet/callback/CallbackInput;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zza:Lcom/google/android/gms/wallet/callback/CallbackInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/callback/CallbackInput;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zza:Lcom/google/android/gms/wallet/callback/CallbackInput;

    return-object v0
.end method

.method public setCallbackType(I)Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zza:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput p1, v0, Lcom/google/android/gms/wallet/callback/CallbackInput;->zza:I

    return-object p0
.end method

.method public setRequestBytes([B)Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/CallbackInput$Builder;->zza:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iput-object p1, v0, Lcom/google/android/gms/wallet/callback/CallbackInput;->zzb:[B

    return-object p0
.end method
