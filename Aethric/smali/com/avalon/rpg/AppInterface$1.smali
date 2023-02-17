.class Lcom/avalon/rpg/AppInterface$1;
.super Ljava/lang/Object;
.source "AppInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/AppInterface;->onAppReady()V
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

    .line 72
    iput-object p1, p0, Lcom/avalon/rpg/AppInterface$1;->this$0:Lcom/avalon/rpg/AppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface$1;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v0, v0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->signInSilently()V

    .line 76
    iget-object v0, p0, Lcom/avalon/rpg/AppInterface$1;->this$0:Lcom/avalon/rpg/AppInterface;

    iget-object v0, v0, Lcom/avalon/rpg/AppInterface;->context:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->getInstallerDetails()V

    return-void
.end method
