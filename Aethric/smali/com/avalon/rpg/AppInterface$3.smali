.class Lcom/avalon/rpg/AppInterface$3;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/AppInterface;->saveSnapshot(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
        "Lcom/google/android/gms/games/snapshot/Snapshot;",
        ">;[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/AppInterface;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/AppInterface;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface$3;->this$0:Lcom/avalon/rpg/AppInterface;

    iput-object p2, p0, Lcom/avalon/rpg/AppInterface$3;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/avalon/rpg/AppInterface$3;->then(Lcom/google/android/gms/tasks/Task;)[B

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface$3;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v1, p0, Lcom/avalon/rpg/AppInterface$3;->val$data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "Orna save data"

    invoke-static {v0, p1, v1, v2}, Lcom/avalon/rpg/AppInterface;->access$000(Lcom/avalon/rpg/AppInterface;Lcom/google/android/gms/games/snapshot/Snapshot;[BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
