.class Lcom/avalon/rpg/ReviewPopup$1$1;
.super Ljava/lang/Object;
.source "ReviewPopup.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/ReviewPopup$1;->onComplete(Lcom/google/android/play/core/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avalon/rpg/ReviewPopup$1;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/ReviewPopup$1;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/avalon/rpg/ReviewPopup$1$1;->this$1:Lcom/avalon/rpg/ReviewPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
