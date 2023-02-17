.class Lcom/avalon/rpg/ReviewPopup$1;
.super Ljava/lang/Object;
.source "ReviewPopup.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/ReviewPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/ReviewPopup;

.field final synthetic val$manager:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/ReviewPopup;Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/avalon/rpg/ReviewPopup$1;->this$0:Lcom/avalon/rpg/ReviewPopup;

    iput-object p2, p0, Lcom/avalon/rpg/ReviewPopup$1;->val$manager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    .line 29
    iget-object v0, p0, Lcom/avalon/rpg/ReviewPopup$1;->val$manager:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/avalon/rpg/ReviewPopup$1;->this$0:Lcom/avalon/rpg/ReviewPopup;

    iget-object v1, v1, Lcom/avalon/rpg/ReviewPopup;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/avalon/rpg/ReviewPopup$1$1;

    invoke-direct {v0, p0}, Lcom/avalon/rpg/ReviewPopup$1$1;-><init>(Lcom/avalon/rpg/ReviewPopup$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method
