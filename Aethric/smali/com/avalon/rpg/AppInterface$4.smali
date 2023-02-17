.class Lcom/avalon/rpg/AppInterface$4;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/AppInterface;->openAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/AppInterface;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/AppInterface;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface$4;->this$0:Lcom/avalon/rpg/AppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface$4;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v0, v0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    const/16 v1, 0x232b

    invoke-virtual {v0, p1, v1}, Lcom/avalon/rpg/Index;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/avalon/rpg/AppInterface$4;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
