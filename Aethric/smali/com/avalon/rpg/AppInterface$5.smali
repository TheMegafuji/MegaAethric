.class Lcom/avalon/rpg/AppInterface$5;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/AppInterface;->openReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/AppInterface;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/AppInterface;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface$5;->this$0:Lcom/avalon/rpg/AppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    new-instance v0, Lcom/avalon/rpg/ReviewPopup;

    iget-object v1, p0, Lcom/avalon/rpg/AppInterface$5;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v1, v1, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-direct {v0, v1}, Lcom/avalon/rpg/ReviewPopup;-><init>(Landroid/app/Activity;)V

    .line 276
    invoke-virtual {v0}, Lcom/avalon/rpg/ReviewPopup;->show()V

    return-void
.end method
