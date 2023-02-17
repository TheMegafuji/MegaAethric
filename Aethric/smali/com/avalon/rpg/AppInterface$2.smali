.class Lcom/avalon/rpg/AppInterface$2;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/AppInterface;->openPayment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/AppInterface;

.field final synthetic val$itemInfo:Ljava/lang/String;

.field final synthetic val$userInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/AppInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface$2;->this$0:Lcom/avalon/rpg/AppInterface;

    iput-object p2, p0, Lcom/avalon/rpg/AppInterface$2;->val$userInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/avalon/rpg/AppInterface$2;->val$itemInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface$2;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v0, v0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    iget-object v1, p0, Lcom/avalon/rpg/AppInterface$2;->val$userInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/avalon/rpg/AppInterface$2;->val$itemInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avalon/rpg/Index;->openPayment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
