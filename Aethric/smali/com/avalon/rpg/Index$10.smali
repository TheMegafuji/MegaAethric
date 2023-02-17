.class Lcom/avalon/rpg/Index$10;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->readSnapshot()V
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
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/avalon/rpg/Index$10;->this$0:Lcom/avalon/rpg/Index;

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

    .line 665
    invoke-virtual {p0, p1}, Lcom/avalon/rpg/Index$10;->then(Lcom/google/android/gms/tasks/Task;)[B

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

    .line 668
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    if-eqz p1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "loaded"

    .line 672
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object p1, p0, Lcom/avalon/rpg/Index$10;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(window.appinterface)?window.appinterface.loadExternalDataFromAndroid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "):undefined"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
