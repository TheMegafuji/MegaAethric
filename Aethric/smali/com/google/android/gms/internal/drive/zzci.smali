.class final synthetic Lcom/google/android/gms/internal/drive/zzci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzfo:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzci;->zzfo:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzci;->zzfo:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzch;->zza(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/drive/events/ListenerToken;

    move-result-object p1

    return-object p1
.end method
