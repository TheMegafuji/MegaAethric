.class Lcom/avalon/rpg/Index$3;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->startOrna()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/avalon/rpg/Index$3;->this$0:Lcom/avalon/rpg/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/avalon/rpg/Index$3;->this$0:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->signInSilently()V

    .line 210
    iget-object v0, p0, Lcom/avalon/rpg/Index$3;->this$0:Lcom/avalon/rpg/Index;

    invoke-virtual {v0}, Lcom/avalon/rpg/Index;->getInstallerDetails()V

    return-void
.end method
