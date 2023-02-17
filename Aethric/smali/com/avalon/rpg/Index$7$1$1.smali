.class Lcom/avalon/rpg/Index$7$1$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index$7$1;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/avalon/rpg/Index$7$1;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index$7$1;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/avalon/rpg/Index$7$1$1;->this$2:Lcom/avalon/rpg/Index$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/avalon/rpg/Index$7$1$1;->this$2:Lcom/avalon/rpg/Index$7$1;

    iget-object v0, v0, Lcom/avalon/rpg/Index$7$1;->this$1:Lcom/avalon/rpg/Index$7;

    iget-object v0, v0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {v0}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.appinterface.consumePurchase(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avalon/rpg/Index$7$1$1;->this$2:Lcom/avalon/rpg/Index$7$1;

    iget-object v2, v2, Lcom/avalon/rpg/Index$7$1;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
