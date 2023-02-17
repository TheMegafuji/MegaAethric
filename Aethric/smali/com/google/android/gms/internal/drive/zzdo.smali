.class final Lcom/google/android/gms/internal/drive/zzdo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgp:Lcom/google/android/gms/internal/drive/zzdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzdk;Lcom/google/android/gms/internal/drive/zzdg;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdo;->zzgp:Lcom/google/android/gms/internal/drive/zzdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdo;->zzgp:Lcom/google/android/gms/internal/drive/zzdg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/drive/zzdg;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
