.class public final synthetic Lcom/google/android/play/core/internal/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/internal/zzas;

.field public final synthetic zzb:Lcom/google/android/play/core/tasks/zzi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/internal/zzas;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzaj;->zza:Lcom/google/android/play/core/internal/zzas;

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzaj;->zzb:Lcom/google/android/play/core/tasks/zzi;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/internal/zzaj;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzaj;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/internal/zzas;->zzr(Lcom/google/android/play/core/tasks/zzi;Lcom/google/android/play/core/tasks/Task;)V

    return-void
.end method
