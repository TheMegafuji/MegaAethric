.class public Lcom/avalon/rpg/ReviewPopup;
.super Ljava/lang/Object;
.source "ReviewPopup.java"


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avalon/rpg/ReviewPopup;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/avalon/rpg/ReviewPopup;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/avalon/rpg/ReviewPopup$1;

    invoke-direct {v2, p0, v0}, Lcom/avalon/rpg/ReviewPopup$1;-><init>(Lcom/avalon/rpg/ReviewPopup;Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
