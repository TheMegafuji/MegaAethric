.class public final synthetic Lcom/google/android/play/core/internal/zzai;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/internal/zzas;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/zzas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzai;->zza:Lcom/google/android/play/core/internal/zzas;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzai;->zza:Lcom/google/android/play/core/internal/zzas;

    invoke-static {v0}, Lcom/google/android/play/core/internal/zzas;->zzi(Lcom/google/android/play/core/internal/zzas;)V

    return-void
.end method
