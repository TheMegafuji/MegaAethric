.class Lcom/avalon/rpg/Index$9$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index$9;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avalon/rpg/Index$9;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index$9;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/avalon/rpg/Index$9$1;->this$1:Lcom/avalon/rpg/Index$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/avalon/rpg/Index$9$1;->this$1:Lcom/avalon/rpg/Index$9;

    iget-object v0, v0, Lcom/avalon/rpg/Index$9;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {v0}, Lcom/avalon/rpg/Index;->access$100(Lcom/avalon/rpg/Index;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 506
    :try_start_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 507
    iget-object v2, p0, Lcom/avalon/rpg/Index$9$1;->this$1:Lcom/avalon/rpg/Index$9;

    iget-object v2, v2, Lcom/avalon/rpg/Index$9;->this$0:Lcom/avalon/rpg/Index;

    invoke-virtual {v2, v1}, Lcom/avalon/rpg/Index;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
