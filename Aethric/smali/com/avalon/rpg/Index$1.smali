.class Lcom/avalon/rpg/Index$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/avalon/rpg/Index$1;->this$0:Lcom/avalon/rpg/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/avalon/rpg/Index$1;->this$0:Lcom/avalon/rpg/Index;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/avalon/rpg/Index;->fcmToken:Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/avalon/rpg/Index$1;->this$0:Lcom/avalon/rpg/Index;

    iget-object p1, p1, Lcom/avalon/rpg/Index;->fcmToken:Ljava/lang/String;

    const-string v0, "fcmtoken"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
